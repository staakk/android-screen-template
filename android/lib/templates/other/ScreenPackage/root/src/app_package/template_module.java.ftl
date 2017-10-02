package ${packageName};

import android.arch.lifecycle.ViewModel;
import android.arch.lifecycle.ViewModelProvider;

import dagger.Binds;
import dagger.Module;
import dagger.android.ContributesAndroidInjector;
import dagger.multibindings.IntoMap;

@Module
public abstract class ${screenName}Module {

    @FragmentScoped
    @ContributesAndroidInjector
    abstract ${screenName}Fragment fragment();

    @Binds
    @IntoMap
    @ViewModelKey(${screenName}ViewModel.class)
    public abstract ViewModel bindViewModel(${screenName}ViewModel viewModel);

    @ActivityScoped
    @Binds
    public abstract ViewModelProvider.Factory bindViewModelFactory(ViewModelFactory factory);

}
