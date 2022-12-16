# aa
class CidrMaskConvert
  def cidr_to_mask(val)
    case val
    when 1
      "128.0.0.0"
    when 16
      "255.255.0.0"
    when 21
      "255.255.248.0"
    when 32
      "255.255.255.255"
    else
      "Invalid"
    end
  end

  def mask_to_cidr(val)
    case val
    when "128.0.0.0"
      "1"
    when "255.255.0.0"
      "16"
    when "255.255.248.0"
      "21"
    when "255.255.255.255"
      "32"
    else
      "Invalid"
    end
  end
end

class IpValidate
  def ipv4_validation(val)
    false
  end
end
