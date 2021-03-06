require_relative 'spec_init'

context "Detect Recorded Telemetry" do
  sink = Telemetry::Controls::Sink.example

  sink.record :something, Time.now, 'some data'

  test "With predicate" do
    assert(sink.recorded? { |r| r.signal == :something })
  end

  test "Without predicate" do
    assert(sink.recorded?)
  end
end
