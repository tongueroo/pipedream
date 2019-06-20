describe Codepipe::Schedule do
  let(:schedule) do
    Codepipe::Schedule.new(schedule_path: "spec/fixtures/app/.codepipeline/schedule.rb")
  end
  context "general" do
    it "builds up the template in memory" do
      template = schedule.run
      expect(template.keys).to eq ["EventsRule", "EventsRuleRole"]
      expect(template["EventsRule"]).to be_a(Hash)
    end
  end
end