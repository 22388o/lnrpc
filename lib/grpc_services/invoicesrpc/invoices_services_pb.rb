# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: invoicesrpc/invoices.proto for package 'invoicesrpc'

require 'grpc'
require 'invoicesrpc/invoices_pb'

module Invoicesrpc
  module Invoices
    # Invoices is a service that can be used to create, accept, settle and cancel
    # invoices.
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'invoicesrpc.Invoices'

      #
      # SubscribeSingleInvoice returns a uni-directional stream (server -> client)
      # to notify the client of state transitions of the specified invoice.
      # Initially the current invoice state is always sent out.
      rpc :SubscribeSingleInvoice, SubscribeSingleInvoiceRequest, stream(Lnrpc::Invoice)
      #
      # CancelInvoice cancels a currently open invoice. If the invoice is already
      # canceled, this call will succeed. If the invoice is already settled, it will
      # fail.
      rpc :CancelInvoice, CancelInvoiceMsg, CancelInvoiceResp
      #
      # AddHoldInvoice creates a hold invoice. It ties the invoice to the hash
      # supplied in the request.
      rpc :AddHoldInvoice, AddHoldInvoiceRequest, AddHoldInvoiceResp
      #
      # SettleInvoice settles an accepted invoice. If the invoice is already
      # settled, this call will succeed.
      rpc :SettleInvoice, SettleInvoiceMsg, SettleInvoiceResp
    end

    Stub = Service.rpc_stub_class
  end
end