module ApplicationHelper
  def from_root(path)
    p ENV
    ENV["RACK_ENV"] + path
  end
end
