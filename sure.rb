# This starts a new safety reconnection
require safEntity
require 'virtus'

module Connection
    class safetyConnect
        include Connection::models
        include Connection.verify

        INPUT_KEY = 55;

        attribute :encrypted
        attribute :passcodes

        def safetyConnect login
            registrations.key_handle
        end 

        def #[account]
        pub struct EscrowAccount {
          pub initializer_key: Pubkey,
          pub initializer_deposit_token_account: Pubkey,
          pub initializer_receive_token_account: Pubkey,
          pub initializer_amount: u64,
          pub taker_amount: u64,
        }
        # this is to match safety

module TwoFactorAuth
  class AuthenticationResponse
    include ActiveModel::Validations
    include Virtus.model

    attribute :encoded, String
    attribute :raw, String

    attribute :bitfield, Fixnum
    attribute :user_presence, Boolean
    attribute :counter, Fixnum
    attribute :signature, String

    validates :bitfield, :user_presence, :counter, :signature, presence: true
    validate :bitfield_correct, :user_is_present
# for the 'virtus'
