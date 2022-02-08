RSpec.describe "output.to_stdout matcher" do
  specify { expect { print('foo') }.to output.to_stdout }
  specify { expect { print('foo') }.to output('foo').to_stdout }
  specify { expect { print('foo') }.to output(/foo/).to_stdout }
  specify { expect { }.to_not output.to_stdout }
  specify { expect { print('foo') }.to_not output('bar').to_stdout }
  specify { expect { print('foo') }.to_not output(/bar/).to_stdout }

  # deliberate failures
  specify { expect { }.to output.to_stdout }
  specify { expect { }.to output('foo').to_stdout }
  specify { expect { print('foo') }.to_not output.to_stdout }
  specify { expect { print('foo') }.to output('bar').to_stdout }
  specify { expect { print('foo') }.to output(/bar/).to_stdout }
end
