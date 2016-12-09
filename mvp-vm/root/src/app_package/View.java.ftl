package ${packageName};

import android.view.LayoutInflater;
import android.view.ViewGroup;

import base.mvp.BaseMvpFragment;

public class ${screenName}View extends BaseMvpFragment<${screenName}Contract.Presenter, ${screenName}Contract.ViewModel, ${screenName}ViewBinding> implements ${screenName}Contract.View {

    @Override
    protected ${screenName}ViewBinding inflateDataBinding(LayoutInflater inflater, ViewGroup container) {
        return ${screenName}ViewBinding.inflate(inflater, container, false);
    }

}