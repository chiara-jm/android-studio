package ${packageName};

import android.support.annotation.NonNull;

import base.domain.UseCaseExecutor;
import base.mvp.BaseCleanPresenter;

public class ${screenName}Presenter extends BaseCleanPresenter<${screenName}Contract.View, ${screenName}Contract.ViewModel> implements ${screenName}Contract.Presenter {

    public ${screenName}Presenter(
            @NonNull ${screenName}Contract.View view,
            @NonNull ${screenName}Contract.ViewModel viewModel,
            @NonNull UseCaseExecutor useCaseExecutor) {
        super(view, viewModel, useCaseExecutor);
    }

}