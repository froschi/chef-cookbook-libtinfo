packages = Array.new

case node[:lsb][:codename]
when "precise"
  packages |= %w/
    libtinfo5
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
