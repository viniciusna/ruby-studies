RSpec.describe Array do
  subject { [1, 2] }

  it "testing subject" do
    expect(subject).to eq([1, 2])
  end

  it { is_expected.to eq([1, 2])}
end