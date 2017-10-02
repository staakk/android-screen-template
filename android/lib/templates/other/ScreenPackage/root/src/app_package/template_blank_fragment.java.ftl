package ${packageName};

import android.arch.lifecycle.ViewModelProvider;
import android.arch.lifecycle.ViewModelProviders;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import javax.inject.Inject;

import butterknife.ButterKnife;

@ActivityScoped
public class ${screenName}Fragment extends DaggerLifecycleFragment {

    @Inject
    ViewModelProvider.Factory viewModelFactory;
	
	${screenName}ViewModel viewModel;
	
	@Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.viewModel = ViewModelProviders.of(this, viewModelFactory).get(${screenName}ViewModel.class);
	}

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_${classToResource(screenName)}, container, false);
        ButterKnife.bind(this, view);
        return view;
    }

    private ${screenName}ViewModel viewModel() {
		 return ViewModelProviders.of(this, viewModelFactory).get(${screenName}ViewModel.class);
    }
}