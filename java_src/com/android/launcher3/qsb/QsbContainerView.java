package com.android.launcher3.qsb;

import android.app.SearchManager;
import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat$$ExternalSyntheticLambda0;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.graphics.FragmentWithPreview;
import com.android.launcher3.qsb.QsbContainerView;
import com.android.launcher3.widget.util.WidgetSizes;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class QsbContainerView extends FrameLayout {

    /* loaded from: classes.dex */
    public class QsbFragment extends FragmentWithPreview {

        /* renamed from: d  reason: collision with root package name */
        public static final /* synthetic */ int f4964d = 0;
        protected String mKeyWidgetId = "qsb_widget_id";
        private int mOrientation;
        private QsbWidgetHostView mQsb;
        private QsbWidgetHost mQsbWidgetHost;
        protected AppWidgetProviderInfo mWidgetInfo;
        private FrameLayout mWrapper;

        public static /* synthetic */ void b(QsbFragment qsbFragment) {
            qsbFragment.getClass();
            qsbFragment.startActivityForResult(new Intent("android.appwidget.action.APPWIDGET_BIND").putExtra("appWidgetId", qsbFragment.mQsbWidgetHost.allocateAppWidgetId()).putExtra("appWidgetProvider", qsbFragment.mWidgetInfo.provider), 1);
        }

        private View createQsb(ViewGroup viewGroup) {
            AppWidgetProviderInfo searchWidgetProviderInfo = QsbContainerView.getSearchWidgetProviderInfo(getContext());
            this.mWidgetInfo = searchWidgetProviderInfo;
            if (searchWidgetProviderInfo == null) {
                return QsbWidgetHostView.getDefaultView(viewGroup);
            }
            boolean z4 = true;
            Bundle widgetSizeOptions = WidgetSizes.getWidgetSizeOptions(getContext(), this.mWidgetInfo.provider, LauncherAppState.getIDP(getContext()).numColumns, 1);
            Context context = getContext();
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
            int i4 = -1;
            int i5 = LauncherPrefs.getPrefs(context).getInt(this.mKeyWidgetId, -1);
            AppWidgetProviderInfo appWidgetInfo = appWidgetManager.getAppWidgetInfo(i5);
            boolean z5 = appWidgetInfo != null && appWidgetInfo.provider.equals(this.mWidgetInfo.provider);
            if (!z5 && !isInPreviewMode()) {
                if (i5 > -1) {
                    this.mQsbWidgetHost.deleteHost();
                }
                int allocateAppWidgetId = this.mQsbWidgetHost.allocateAppWidgetId();
                boolean bindAppWidgetIdIfAllowed = appWidgetManager.bindAppWidgetIdIfAllowed(allocateAppWidgetId, this.mWidgetInfo.getProfile(), this.mWidgetInfo.provider, widgetSizeOptions);
                if (bindAppWidgetIdIfAllowed) {
                    i4 = allocateAppWidgetId;
                } else {
                    this.mQsbWidgetHost.deleteAppWidgetId(allocateAppWidgetId);
                }
                if (i5 != i4) {
                    LauncherPrefs.getPrefs(getContext()).edit().putInt(this.mKeyWidgetId, i4).apply();
                }
                z5 = bindAppWidgetIdIfAllowed;
                i5 = i4;
            }
            if (!z5) {
                View defaultView = QsbWidgetHostView.getDefaultView(viewGroup);
                View findViewById = defaultView.findViewById(R.id.btn_qsb_setup);
                findViewById.setVisibility(0);
                findViewById.setOnClickListener(new View.OnClickListener() { // from class: T0.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        QsbContainerView.QsbFragment.b(QsbContainerView.QsbFragment.this);
                    }
                });
                return defaultView;
            }
            QsbWidgetHostView qsbWidgetHostView = (QsbWidgetHostView) this.mQsbWidgetHost.createView(context, i5, this.mWidgetInfo);
            this.mQsb = qsbWidgetHostView;
            qsbWidgetHostView.setId(R.id.qsb_widget);
            if (!isInPreviewMode()) {
                Bundle appWidgetOptions = AppWidgetManager.getInstance(context).getAppWidgetOptions(i5);
                for (String str : widgetSizeOptions.keySet()) {
                    Object obj = widgetSizeOptions.get(str);
                    Object obj2 = appWidgetOptions.get(str);
                    if (obj == null) {
                        if (obj2 != null) {
                            z4 = false;
                            break;
                        }
                    } else if (!obj.equals(obj2)) {
                        z4 = false;
                        break;
                    }
                }
                if (!z4) {
                    this.mQsb.updateAppWidgetOptions(widgetSizeOptions);
                }
            }
            return this.mQsb;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void rebindFragment() {
            if (this.mWrapper == null || getContext() == null) {
                return;
            }
            this.mWrapper.removeAllViews();
            FrameLayout frameLayout = this.mWrapper;
            frameLayout.addView(createQsb(frameLayout));
        }

        @Override // android.app.Fragment
        public final void onActivityResult(int i4, int i5, Intent intent) {
            if (i4 == 1) {
                if (i5 != -1) {
                    this.mQsbWidgetHost.deleteHost();
                    return;
                }
                LauncherPrefs.getPrefs(getContext()).edit().putInt(this.mKeyWidgetId, intent.getIntExtra("appWidgetId", -1)).apply();
                rebindFragment();
            }
        }

        @Override // android.app.Fragment
        public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            this.mWrapper = new FrameLayout(getContext());
            this.mQsbWidgetHost.startListening();
            FrameLayout frameLayout = this.mWrapper;
            frameLayout.addView(createQsb(frameLayout));
            return this.mWrapper;
        }

        @Override // android.app.Fragment
        public final void onDestroy() {
            this.mQsbWidgetHost.stopListening();
            super.onDestroy();
        }

        @Override // com.android.launcher3.graphics.FragmentWithPreview
        public final void onInit() {
            this.mQsbWidgetHost = new QsbWidgetHost(getContext(), new ViewCompat$$ExternalSyntheticLambda0(), new QsbContainerView$QsbFragment$$ExternalSyntheticLambda0(this));
            this.mOrientation = getContext().getResources().getConfiguration().orientation;
        }

        @Override // android.app.Fragment
        public final void onResume() {
            super.onResume();
            QsbWidgetHostView qsbWidgetHostView = this.mQsb;
            if (qsbWidgetHostView == null || !qsbWidgetHostView.isReinflateRequired(this.mOrientation)) {
                return;
            }
            rebindFragment();
        }
    }

    /* loaded from: classes.dex */
    public final class QsbWidgetHost extends AppWidgetHost {
        private final ViewCompat$$ExternalSyntheticLambda0 mViewFactory;
        private final QsbContainerView$QsbFragment$$ExternalSyntheticLambda0 mWidgetsUpdateCallback;

        public QsbWidgetHost(Context context, ViewCompat$$ExternalSyntheticLambda0 viewCompat$$ExternalSyntheticLambda0, QsbContainerView$QsbFragment$$ExternalSyntheticLambda0 qsbContainerView$QsbFragment$$ExternalSyntheticLambda0) {
            super(context, 1026);
            this.mViewFactory = viewCompat$$ExternalSyntheticLambda0;
            this.mWidgetsUpdateCallback = qsbContainerView$QsbFragment$$ExternalSyntheticLambda0;
        }

        @Override // android.appwidget.AppWidgetHost
        public final AppWidgetHostView onCreateView(Context context, int i4, AppWidgetProviderInfo appWidgetProviderInfo) {
            getClass();
            int i5 = QsbFragment.f4964d;
            return new QsbWidgetHostView(context);
        }

        @Override // android.appwidget.AppWidgetHost
        public final void onProvidersChanged() {
            super.onProvidersChanged();
            QsbContainerView$QsbFragment$$ExternalSyntheticLambda0 qsbContainerView$QsbFragment$$ExternalSyntheticLambda0 = this.mWidgetsUpdateCallback;
            if (qsbContainerView$QsbFragment$$ExternalSyntheticLambda0 != null) {
                qsbContainerView$QsbFragment$$ExternalSyntheticLambda0.f4963a.rebindFragment();
            }
        }
    }

    public static ComponentName getSearchComponentName(Context context) {
        AppWidgetProviderInfo searchWidgetProviderInfo = getSearchWidgetProviderInfo(context);
        if (searchWidgetProviderInfo != null) {
            return searchWidgetProviderInfo.provider;
        }
        String searchWidgetPackageName = getSearchWidgetPackageName(context);
        if (searchWidgetPackageName != null) {
            return new ComponentName(searchWidgetPackageName, searchWidgetPackageName);
        }
        return null;
    }

    public static String getSearchWidgetPackageName(Context context) {
        String string = Settings.Global.getString(context.getContentResolver(), "SEARCH_PROVIDER_PACKAGE_NAME");
        if (string == null) {
            SearchManager searchManager = (SearchManager) context.getSystemService(SearchManager.class);
            return searchManager.getGlobalSearchActivity() != null ? searchManager.getGlobalSearchActivity().getPackageName() : string;
        }
        return string;
    }

    public static AppWidgetProviderInfo getSearchWidgetProviderInfo(Context context) {
        String searchWidgetPackageName = getSearchWidgetPackageName(context);
        AppWidgetProviderInfo appWidgetProviderInfo = null;
        if (searchWidgetPackageName == null) {
            return null;
        }
        for (AppWidgetProviderInfo appWidgetProviderInfo2 : AppWidgetManager.getInstance(context).getInstalledProvidersForPackage(searchWidgetPackageName, null)) {
            if (appWidgetProviderInfo2.provider.getPackageName().equals(searchWidgetPackageName) && appWidgetProviderInfo2.configure == null) {
                if ((appWidgetProviderInfo2.widgetCategory & 4) != 0) {
                    return appWidgetProviderInfo2;
                }
                if (appWidgetProviderInfo == null) {
                    appWidgetProviderInfo = appWidgetProviderInfo2;
                }
            }
        }
        return appWidgetProviderInfo;
    }
}
