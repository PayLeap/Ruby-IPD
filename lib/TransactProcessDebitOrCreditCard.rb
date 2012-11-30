require 'rubygems'
require 'httparty'

class TransactProcessDebitOrCreditCard
  def ProcessCreditOrDebitCard(url,username,password,transtype,cardnum,expdate,cvnum,amount,nameoncard,magdata,pnref,extdata)
  data = 'UserName=' + username + '&Password=' + password +'&TransType=' + transtype + '&CardNum=' + cardnum +'&ExpDate='+ expdate +'&CVNum='+ cvnum +'&Amount='+ amount +'&NameOnCard='+ nameoncard +'&MagData='+ magdata +'&PNRef='+ pnref +'&ExtData='+ extdata
    strresponse = ""
	begin
    response = HTTParty.get(URI.encode(url+'?'+data))
	data = response.parsed_response
	responseCode = response.code.to_s
	result = String.new(data['Response']['Result'])
    case result
	  when '0'
	    return data
	  else 
	    return data
	  end
	rescue Exception => e
	   return e.message
	 end
   end  
 end  
 
 