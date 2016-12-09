# android-studio
Android Studio templates and tools to make the developer life easier

## mvp-vm
It contains templates to create the squeleton for the presentation layer of an specific screen based on [android-mvp-vm](https://github.com/chiara-jm/android-mvp-vm).

### How to use it?
Just copy the `mvp-vm` folder into:

+ MAC: `/Applications/Android Studio.app/Contents/plugins/android/lib/templates/other/`
+ Windows: `{ANDROID_STUDIO_LOCATION}/plugins/android/lib/templates/other/`

and restart AndroidStudio. Then just create all your mvp-vm screens by just doing a single click.

![android-studio-screen-shoot](https://github.com/chiara-jm/android-studio/raw/master/screenshots/mvp-vm-template.png)

###The Magic
The mvp-vm template will create the `Contract` interface:
```java
public interface MvpScreenContract {

    interface View extends BaseContract.View<Presenter, ViewModel> {

    }

    interface Presenter extends BaseContract.Presenter<View, ViewModel> {

    }

    interface ViewModel extends BaseContract.ViewModel {

    }
}
```
The `Presenter` implementation:
```java
public class MvpScreenPresenter extends BaseCleanPresenter<MvpScreenContract.View, MvpScreenContract.ViewModel> implements MvpScreenContract.Presenter {

    public MvpScreenPresenter(
            @NonNull MvpScreenContract.View view,
            @NonNull MvpScreenContract.ViewModel viewModel,
            @NonNull UseCaseExecutor useCaseExecutor) {
        super(view, viewModel, useCaseExecutor);
    }

}
```
The `ViewModel` implementation:
```java
public class MvpScreenViewModel extends BaseObservable implements MvpScreenContract.ViewModel {

    @Override
    public boolean isLoading() {
        return false;
    }

}
```
The `FragmentView` implementation:
```java
public class MvpScreenView extends BaseMvpFragment<MvpScreenContract.Presenter, MvpScreenContract.ViewModel, MvpScreenViewBinding> implements MvpScreenContract.View {

    @Override
    protected MvpScreenViewBinding inflateDataBinding(LayoutInflater inflater, ViewGroup container) {
        return MvpScreenViewBinding.inflate(inflater, container, false);
    }

}
```
And finally its `layout resource`:
```xml
<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android">

    <data>

        <import type="android.view.View"/>

        <variable
            name="viewModel"
            type="apppackage.presentation.mvpscreenpackage.MvpScreenContract.ViewModel"/>

        <variable
            name="presenter"
            type="apppackage.presentation.mvpscreenpackage.MvpScreenContract.Presenter"/>
    </data>

    <FrameLayout
        android:id="@+id/content"
        android:layout_width="match_parent"
        android:layout_height="match_parent">

        <ProgressBar
            android:id="@+id/content_loading"
            style="@style/Base.Widget.AppCompat.ProgressBar.Horizontal"
            android:layout_width="200dp"
            android:layout_height="wrap_content"
            android:layout_gravity="center"
            android:indeterminate="true"
            android:visibility='@{viewModel.loading ? View.GONE : View.VISIBLE}'/>

        <FrameLayout
            android:id="@+id/content_data"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:visibility='@{viewModel.loading ? View.VISIBLE : View.GONE}'>
            
            <!-- insert your specific layout here -->

        </FrameLayout>
    </FrameLayout>
</layout>
```
