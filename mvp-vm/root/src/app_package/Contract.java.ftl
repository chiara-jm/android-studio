package ${packageName};

import base.mvp.BaseContract;

public interface ${screenName}Contract {

    interface View extends BaseContract.View<Presenter, ViewModel> {

    }

    interface Presenter extends BaseContract.Presenter {

    }

    interface ViewModel extends BaseContract.ViewModel {

    }
}