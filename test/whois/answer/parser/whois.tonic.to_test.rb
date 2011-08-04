require 'test_helper'
require 'whois/answer/parser/whois.tonic.to'

class AnswerParserWhoisTonicToTest < Whois::Answer::Parser::TestCase

  def setup
    @klass  = Whois::Answer::Parser::WhoisTonicTo
    @host   = "whois.tonic.to"
  end


  def test_disclaimer
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_registered.txt')).disclaimer }
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_available.txt')).disclaimer }
  end


  def test_domain
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_registered.txt')).domain }
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_available.txt')).domain }
  end

  def test_domain_id
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_registered.txt')).domain_id }
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_available.txt')).domain_id }
  end


  def test_referral_whois
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_registered.txt')).referral_whois }
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_available.txt')).referral_whois }
  end

  def test_referral_url
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_registered.txt')).referral_url }
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_available.txt')).referral_url }
  end


  def test_status
    parser    = @klass.new(load_part('is_incomplete.txt'))
    expected  = :incomplete
    assert_equal  expected, parser.status
    assert_equal  expected, parser.instance_eval { @status }

    parser    = @klass.new(load_part('status_registered.txt'))
    expected  = :registered
    assert_equal  expected, parser.status
    assert_equal  expected, parser.instance_eval { @status }

    parser    = @klass.new(load_part('status_available.txt'))
    expected  = :available
    assert_equal  expected, parser.status
    assert_equal  expected, parser.instance_eval { @status }
  end

  def test_available?
    parser    = @klass.new(load_part('status_registered.txt'))
    expected  = false
    assert_equal  expected, parser.available?
    assert_equal  expected, parser.instance_eval { @available }

    parser    = @klass.new(load_part('status_available.txt'))
    expected  = true
    assert_equal  expected, parser.available?
    assert_equal  expected, parser.instance_eval { @available }
  end

  def test_registered?
    parser    = @klass.new(load_part('status_registered.txt'))
    expected  = true
    assert_equal  expected, parser.registered?
    assert_equal  expected, parser.instance_eval { @registered }

    parser    = @klass.new(load_part('status_available.txt'))
    expected  = false
    assert_equal  expected, parser.registered?
    assert_equal  expected, parser.instance_eval { @registered }
  end

  def test_incomplete?
    parser    = @klass.new(load_part('status_registered.txt'))
    expected  = false
    assert_equal  expected, parser.incomplete?
    # assert_equal  expected, parser.instance_eval { @incomplete }

    parser    = @klass.new(load_part('status_available.txt'))
    expected  = false
    assert_equal  expected, parser.incomplete?
    # assert_equal  expected, parser.instance_eval { @incomplete }

    parser    = @klass.new(load_part('is_incomplete.txt'))
    expected  = true
    assert_equal  expected, parser.incomplete?
    # assert_equal  expected, parser.instance_eval { @incomplete }
  end


  def test_created_on
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_registered.txt')).created_on }
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_available.txt')).created_on }
  end

  def test_updated_on
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_registered.txt')).updated_on }
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_available.txt')).updated_on }
  end

  def test_expires_on
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_registered.txt')).expires_on }
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_available.txt')).expires_on }
  end


  def test_registrar
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_registered.txt')).registrar }
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_available.txt')).registrar }
  end


  def test_registrant_contact
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_registered.txt')).registrant_contact }
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_available.txt')).registrant_contact }
  end

  def test_admin_contact
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_registered.txt')).admin_contact }
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_available.txt')).admin_contact }
  end

  def test_technical_contact
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_registered.txt')).technical_contact }
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_available.txt')).technical_contact }
  end


  def test_nameservers
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_registered.txt')).nameservers }
    assert_raise(Whois::PropertyNotSupported) { @klass.new(load_part('status_available.txt')).nameservers }
  end

end