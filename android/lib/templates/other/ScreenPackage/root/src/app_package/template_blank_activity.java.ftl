package ${packageName};

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;

import javax.inject.Inject;

import dagger.android.support.DaggerAppCompatActivity;

public class ${screenName}Activity extends DaggerAppCompatActivity {

	// TODO add to activity binding module

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_${classToResource(screenName)});

        getSupportFragmentManager().beginTransaction()
                .add(R.id.fragment_container, new ${screenName}Fragment())
                .commit();
    }
	
}
