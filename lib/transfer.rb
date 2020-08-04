require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize (sender, receiver,amount)
    @sender=sender
    @receiver=receiver
    @amount=amount
    @status="pending"
  end
    
 def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    @both= @both.valid?
      if @both && sender.balance > amount
        sender.deposit (amount * -1)
        receiver.deposit (amount)
        @status="complete"
        elsif @status="complete"
        puts "Transaction was already excuted"
      else @status="rejected"
        "Transaction rejected. Please check your account balance."
      end
   end

  
end
