# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: walletunlocker.proto

require 'google/protobuf'

require 'rpc_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("walletunlocker.proto", :syntax => :proto3) do
    add_message "lnrpc.GenSeedRequest" do
      optional :aezeed_passphrase, :bytes, 1
      optional :seed_entropy, :bytes, 2
    end
    add_message "lnrpc.GenSeedResponse" do
      repeated :cipher_seed_mnemonic, :string, 1
      optional :enciphered_seed, :bytes, 2
    end
    add_message "lnrpc.InitWalletRequest" do
      optional :wallet_password, :bytes, 1
      repeated :cipher_seed_mnemonic, :string, 2
      optional :aezeed_passphrase, :bytes, 3
      optional :recovery_window, :int32, 4
      optional :channel_backups, :message, 5, "lnrpc.ChanBackupSnapshot"
    end
    add_message "lnrpc.InitWalletResponse" do
    end
    add_message "lnrpc.UnlockWalletRequest" do
      optional :wallet_password, :bytes, 1
      optional :recovery_window, :int32, 2
      optional :channel_backups, :message, 3, "lnrpc.ChanBackupSnapshot"
    end
    add_message "lnrpc.UnlockWalletResponse" do
    end
    add_message "lnrpc.ChangePasswordRequest" do
      optional :current_password, :bytes, 1
      optional :new_password, :bytes, 2
    end
    add_message "lnrpc.ChangePasswordResponse" do
    end
  end
end

module Lnrpc
  GenSeedRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("lnrpc.GenSeedRequest").msgclass
  GenSeedResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("lnrpc.GenSeedResponse").msgclass
  InitWalletRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("lnrpc.InitWalletRequest").msgclass
  InitWalletResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("lnrpc.InitWalletResponse").msgclass
  UnlockWalletRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("lnrpc.UnlockWalletRequest").msgclass
  UnlockWalletResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("lnrpc.UnlockWalletResponse").msgclass
  ChangePasswordRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("lnrpc.ChangePasswordRequest").msgclass
  ChangePasswordResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("lnrpc.ChangePasswordResponse").msgclass
end