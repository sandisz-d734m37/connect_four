RSpec.describe :a => 7, :b => 5 do
  it { is_expected.to include(:a) }
  it { is_expected.to include(:b, :a) }
  it { is_expected.to include(:a => 7) }
  it { is_expected.to include(:b => 5, :a => 7) }
  it { is_expected.not_to include(:c) }
  it { is_expected.not_to include(:c, :d) }
  it { is_expected.not_to include(:d => 2) }
  it { is_expected.not_to include(:a => 5) }
  it { is_expected.not_to include(:b => 7, :a => 5) }

  # deliberate failures
  it { is_expected.not_to include(:a) }
  it { is_expected.not_to include(:b, :a) }
  it { is_expected.not_to include(:a => 7) }
  it { is_expected.not_to include(:a => 7, :b => 5) }
  it { is_expected.to include(:c) }
  it { is_expected.to include(:c, :d) }
  it { is_expected.to include(:d => 2) }
  it { is_expected.to include(:a => 5) }
  it { is_expected.to include(:a => 5, :b => 7) }

  # Mixed cases--the hash includes one but not the other.
  # All 4 of these cases should fail.
  it { is_expected.to include(:a, :d) }
  it { is_expected.not_to include(:a, :d) }
  it { is_expected.to include(:a => 7, :d => 3) }
  it { is_expected.not_to include(:a => 7, :d => 3) }
end

