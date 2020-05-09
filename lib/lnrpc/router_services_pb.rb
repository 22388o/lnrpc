# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: router.proto for package 'routerrpc'

require 'grpc'
require_relative 'router_pb'

module Routerrpc
  module Router
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'routerrpc.Router'

      # *
      # SendPaymentV2 attempts to route a payment described by the passed
      # PaymentRequest to the final destination. The call returns a stream of
      # payment updates.
      rpc :SendPaymentV2, SendPaymentRequest, stream(Lnrpc::Payment)
      # *
      # TrackPaymentV2 returns an update stream for the payment identified by the
      # payment hash.
      rpc :TrackPaymentV2, TrackPaymentRequest, stream(Lnrpc::Payment)
      # *
      # EstimateRouteFee allows callers to obtain a lower bound w.r.t how much it
      # may cost to send an HTLC to the target end destination.
      rpc :EstimateRouteFee, RouteFeeRequest, RouteFeeResponse
      # *
      # SendToRoute attempts to make a payment via the specified route. This method
      # differs from SendPayment in that it allows users to specify a full route
      # manually. This can be used for things like rebalancing, and atomic swaps.
      rpc :SendToRoute, SendToRouteRequest, SendToRouteResponse
      # *
      # ResetMissionControl clears all mission control state and starts with a clean
      # slate.
      rpc :ResetMissionControl, ResetMissionControlRequest, ResetMissionControlResponse
      # *
      # QueryMissionControl exposes the internal mission control state to callers.
      # It is a development feature.
      rpc :QueryMissionControl, QueryMissionControlRequest, QueryMissionControlResponse
      # *
      # QueryProbability returns the current success probability estimate for a
      # given node pair and amount.
      rpc :QueryProbability, QueryProbabilityRequest, QueryProbabilityResponse
      # *
      # BuildRoute builds a fully specified route based on a list of hop public
      # keys. It retrieves the relevant channel policies from the graph in order to
      # calculate the correct fees and time locks.
      rpc :BuildRoute, BuildRouteRequest, BuildRouteResponse
      # *
      # SubscribeHtlcEvents creates a uni-directional stream from the server to
      # the client which delivers a stream of htlc events.
      rpc :SubscribeHtlcEvents, SubscribeHtlcEventsRequest, stream(HtlcEvent)
      # *
      # Deprecated, use SendPaymentV2. SendPayment attempts to route a payment
      # described by the passed PaymentRequest to the final destination. The call
      # returns a stream of payment status updates.
      rpc :SendPayment, SendPaymentRequest, stream(PaymentStatus)
      # *
      # Deprecated, use TrackPaymentV2. TrackPayment returns an update stream for
      # the payment identified by the payment hash.
      rpc :TrackPayment, TrackPaymentRequest, stream(PaymentStatus)
    end

    Stub = Service.rpc_stub_class
  end
end