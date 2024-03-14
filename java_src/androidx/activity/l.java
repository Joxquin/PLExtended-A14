package androidx.activity;

import a0.C0152e;
import a0.C0153f;
import a0.C0155h;
import a0.InterfaceC0151d;
import a0.InterfaceC0154g;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Trace;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.core.view.C0172i;
import androidx.core.view.C0173j;
import androidx.core.view.InterfaceC0169f;
import androidx.core.view.InterfaceC0174k;
import androidx.lifecycle.AbstractC0247m;
import androidx.lifecycle.C0245k;
import androidx.lifecycle.C0252s;
import androidx.lifecycle.I;
import androidx.lifecycle.InterfaceC0242h;
import androidx.lifecycle.InterfaceC0249o;
import androidx.lifecycle.InterfaceC0251q;
import androidx.lifecycle.L;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.O;
import androidx.lifecycle.Q;
import androidx.lifecycle.ReportFragment;
import androidx.lifecycle.U;
import androidx.lifecycle.V;
import androidx.lifecycle.W;
import b.C0305a;
import b.InterfaceC0306b;
import c.AbstractC0318b;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class l extends B.e implements V, InterfaceC0242h, InterfaceC0154g, t, androidx.activity.result.i, C.c, C.d, B.i, B.j, InterfaceC0169f {
    private static final String ACTIVITY_RESULT_TAG = "android:support:activity-result";
    private final androidx.activity.result.h mActivityResultRegistry;
    private int mContentLayoutId;
    final C0305a mContextAwareHelper;
    private Q mDefaultFactory;
    private boolean mDispatchingOnMultiWindowModeChanged;
    private boolean mDispatchingOnPictureInPictureModeChanged;
    final o mFullyDrawnReporter;
    private final C0252s mLifecycleRegistry;
    private final C0173j mMenuHostHelper;
    private final AtomicInteger mNextLocalRequestCode;
    private final s mOnBackPressedDispatcher;
    private final CopyOnWriteArrayList mOnConfigurationChangedListeners;
    private final CopyOnWriteArrayList mOnMultiWindowModeChangedListeners;
    private final CopyOnWriteArrayList mOnNewIntentListeners;
    private final CopyOnWriteArrayList mOnPictureInPictureModeChangedListeners;
    private final CopyOnWriteArrayList mOnTrimMemoryListeners;
    private final j mReportFullyDrawnExecutor;
    final C0153f mSavedStateRegistryController;
    private U mViewModelStore;

    /* JADX WARN: Type inference failed for: r4v0, types: [androidx.activity.c] */
    public l() {
        this.mContextAwareHelper = new C0305a();
        this.mMenuHostHelper = new C0173j(new b(0, this));
        this.mLifecycleRegistry = new C0252s(this);
        C0153f c0153f = new C0153f(this);
        this.mSavedStateRegistryController = c0153f;
        this.mOnBackPressedDispatcher = new s(new f(this));
        j createFullyDrawnExecutor = createFullyDrawnExecutor();
        this.mReportFullyDrawnExecutor = createFullyDrawnExecutor;
        this.mFullyDrawnReporter = new o(createFullyDrawnExecutor, new m3.a() { // from class: androidx.activity.c
            @Override // m3.a
            public final Object invoke() {
                e3.f lambda$new$0;
                lambda$new$0 = l.this.lambda$new$0();
                return lambda$new$0;
            }
        });
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mActivityResultRegistry = new h(this);
        this.mOnConfigurationChangedListeners = new CopyOnWriteArrayList();
        this.mOnTrimMemoryListeners = new CopyOnWriteArrayList();
        this.mOnNewIntentListeners = new CopyOnWriteArrayList();
        this.mOnMultiWindowModeChangedListeners = new CopyOnWriteArrayList();
        this.mOnPictureInPictureModeChangedListeners = new CopyOnWriteArrayList();
        this.mDispatchingOnMultiWindowModeChanged = false;
        this.mDispatchingOnPictureInPictureModeChanged = false;
        if (getLifecycle() != null) {
            getLifecycle().a(new InterfaceC0249o() { // from class: androidx.activity.ComponentActivity$3
                @Override // androidx.lifecycle.InterfaceC0249o
                public final void b(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
                    if (lifecycle$Event == Lifecycle$Event.ON_STOP) {
                        Window window = l.this.getWindow();
                        View peekDecorView = window != null ? window.peekDecorView() : null;
                        if (peekDecorView != null) {
                            peekDecorView.cancelPendingInputEvents();
                        }
                    }
                }
            });
            getLifecycle().a(new InterfaceC0249o() { // from class: androidx.activity.ComponentActivity$4
                @Override // androidx.lifecycle.InterfaceC0249o
                public final void b(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
                    if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
                        l.this.mContextAwareHelper.f4152b = null;
                        if (l.this.isChangingConfigurations()) {
                            return;
                        }
                        l.this.getViewModelStore().a();
                    }
                }
            });
            getLifecycle().a(new InterfaceC0249o() { // from class: androidx.activity.ComponentActivity$5
                @Override // androidx.lifecycle.InterfaceC0249o
                public final void b(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
                    l lVar = l.this;
                    lVar.ensureViewModelStore();
                    lVar.getLifecycle().c(this);
                }
            });
            c0153f.a();
            I.b(this);
            getSavedStateRegistry().c(ACTIVITY_RESULT_TAG, new InterfaceC0151d() { // from class: androidx.activity.d
                @Override // a0.InterfaceC0151d
                public final Bundle a() {
                    Bundle lambda$new$1;
                    lambda$new$1 = l.this.lambda$new$1();
                    return lambda$new$1;
                }
            });
            addOnContextAvailableListener(new InterfaceC0306b() { // from class: androidx.activity.e
                @Override // b.InterfaceC0306b
                public final void a(Context context) {
                    l.this.lambda$new$2(context);
                }
            });
            return;
        }
        throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
    }

    private j createFullyDrawnExecutor() {
        return new k(this);
    }

    private void initViewTreeOwners() {
        W.b(getWindow().getDecorView(), this);
        View decorView = getWindow().getDecorView();
        kotlin.jvm.internal.h.e(decorView, "<this>");
        decorView.setTag(R.id.view_tree_view_model_store_owner, this);
        C0155h.a(getWindow().getDecorView(), this);
        u.a(getWindow().getDecorView(), this);
        View decorView2 = getWindow().getDecorView();
        kotlin.jvm.internal.h.e(decorView2, "<this>");
        decorView2.setTag(R.id.report_drawn, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ e3.f lambda$new$0() {
        reportFullyDrawn();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bundle lambda$new$1() {
        Bundle bundle = new Bundle();
        androidx.activity.result.h hVar = this.mActivityResultRegistry;
        hVar.getClass();
        HashMap hashMap = (HashMap) hVar.f2468c;
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(hashMap.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(hashMap.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(hVar.f2470e));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) hVar.f2473h.clone());
        bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", hVar.f2466a);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$new$2(Context context) {
        Bundle a4 = getSavedStateRegistry().a(ACTIVITY_RESULT_TAG);
        if (a4 != null) {
            androidx.activity.result.h hVar = this.mActivityResultRegistry;
            hVar.getClass();
            ArrayList<Integer> integerArrayList = a4.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
            ArrayList<String> stringArrayList = a4.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
            if (stringArrayList == null || integerArrayList == null) {
                return;
            }
            hVar.f2470e = a4.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
            hVar.f2466a = (Random) a4.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
            Bundle bundle = a4.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
            Bundle bundle2 = hVar.f2473h;
            bundle2.putAll(bundle);
            for (int i4 = 0; i4 < stringArrayList.size(); i4++) {
                String str = stringArrayList.get(i4);
                Map map = hVar.f2468c;
                HashMap hashMap = (HashMap) map;
                boolean containsKey = hashMap.containsKey(str);
                Map map2 = hVar.f2467b;
                if (containsKey) {
                    Integer num = (Integer) hashMap.remove(str);
                    if (!bundle2.containsKey(str)) {
                        ((HashMap) map2).remove(num);
                    }
                }
                int intValue = integerArrayList.get(i4).intValue();
                String str2 = stringArrayList.get(i4);
                ((HashMap) map2).put(Integer.valueOf(intValue), str2);
                ((HashMap) map).put(str2, Integer.valueOf(intValue));
            }
        }
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        this.mReportFullyDrawnExecutor.h(getWindow().getDecorView());
        super.addContentView(view, layoutParams);
    }

    @Override // androidx.core.view.InterfaceC0169f
    public void addMenuProvider(InterfaceC0174k interfaceC0174k) {
        C0173j c0173j = this.mMenuHostHelper;
        c0173j.f3118b.add(interfaceC0174k);
        c0173j.f3117a.run();
    }

    @Override // C.c
    public final void addOnConfigurationChangedListener(L.a aVar) {
        this.mOnConfigurationChangedListeners.add(aVar);
    }

    public final void addOnContextAvailableListener(InterfaceC0306b listener) {
        C0305a c0305a = this.mContextAwareHelper;
        c0305a.getClass();
        kotlin.jvm.internal.h.e(listener, "listener");
        Context context = c0305a.f4152b;
        if (context != null) {
            listener.a(context);
        }
        ((CopyOnWriteArraySet) c0305a.f4151a).add(listener);
    }

    @Override // B.i
    public final void addOnMultiWindowModeChangedListener(L.a aVar) {
        this.mOnMultiWindowModeChangedListeners.add(aVar);
    }

    public final void addOnNewIntentListener(L.a aVar) {
        this.mOnNewIntentListeners.add(aVar);
    }

    @Override // B.j
    public final void addOnPictureInPictureModeChangedListener(L.a aVar) {
        this.mOnPictureInPictureModeChangedListeners.add(aVar);
    }

    @Override // C.d
    public final void addOnTrimMemoryListener(L.a aVar) {
        this.mOnTrimMemoryListeners.add(aVar);
    }

    public void ensureViewModelStore() {
        if (this.mViewModelStore == null) {
            i iVar = (i) getLastNonConfigurationInstance();
            if (iVar != null) {
                this.mViewModelStore = iVar.f2433b;
            }
            if (this.mViewModelStore == null) {
                this.mViewModelStore = new U();
            }
        }
    }

    @Override // androidx.activity.result.i
    public final androidx.activity.result.h getActivityResultRegistry() {
        return this.mActivityResultRegistry;
    }

    @Override // androidx.lifecycle.InterfaceC0242h
    public V.b getDefaultViewModelCreationExtras() {
        V.d dVar = new V.d();
        Application application = getApplication();
        Map map = dVar.f1779a;
        if (application != null) {
            map.put(O.f3583a, getApplication());
        }
        map.put(I.f3557a, this);
        map.put(I.f3558b, this);
        if (getIntent() != null && getIntent().getExtras() != null) {
            map.put(I.f3559c, getIntent().getExtras());
        }
        return dVar;
    }

    public Q getDefaultViewModelProviderFactory() {
        if (this.mDefaultFactory == null) {
            this.mDefaultFactory = new L(getApplication(), this, getIntent() != null ? getIntent().getExtras() : null);
        }
        return this.mDefaultFactory;
    }

    public o getFullyDrawnReporter() {
        return this.mFullyDrawnReporter;
    }

    @Deprecated
    public Object getLastCustomNonConfigurationInstance() {
        i iVar = (i) getLastNonConfigurationInstance();
        if (iVar != null) {
            return iVar.f2432a;
        }
        return null;
    }

    @Override // B.e, androidx.lifecycle.InterfaceC0251q
    public AbstractC0247m getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // androidx.activity.t
    public final s getOnBackPressedDispatcher() {
        return this.mOnBackPressedDispatcher;
    }

    @Override // a0.InterfaceC0154g
    public final C0152e getSavedStateRegistry() {
        return this.mSavedStateRegistryController.f2389b;
    }

    @Override // androidx.lifecycle.V
    public U getViewModelStore() {
        if (getApplication() != null) {
            ensureViewModelStore();
            return this.mViewModelStore;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    public void invalidateMenu() {
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    @Deprecated
    public void onActivityResult(int i4, int i5, Intent intent) {
        if (this.mActivityResultRegistry.a(i4, i5, intent)) {
            return;
        }
        super.onActivityResult(i4, i5, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.mOnBackPressedDispatcher.b();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Iterator it = this.mOnConfigurationChangedListeners.iterator();
        while (it.hasNext()) {
            ((L.a) it.next()).accept(configuration);
        }
    }

    @Override // B.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.mSavedStateRegistryController.b(bundle);
        C0305a c0305a = this.mContextAwareHelper;
        c0305a.getClass();
        c0305a.f4152b = this;
        Iterator it = ((CopyOnWriteArraySet) c0305a.f4151a).iterator();
        while (it.hasNext()) {
            ((InterfaceC0306b) it.next()).a(this);
        }
        super.onCreate(bundle);
        ReportFragment.a(this);
        int i4 = I.b.f550a;
        s sVar = this.mOnBackPressedDispatcher;
        OnBackInvokedDispatcher invoker = getOnBackInvokedDispatcher();
        sVar.getClass();
        kotlin.jvm.internal.h.e(invoker, "invoker");
        sVar.f2482e = invoker;
        sVar.c();
        int i5 = this.mContentLayoutId;
        if (i5 != 0) {
            setContentView(i5);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i4, Menu menu) {
        if (i4 == 0) {
            super.onCreatePanelMenu(i4, menu);
            C0173j c0173j = this.mMenuHostHelper;
            MenuInflater menuInflater = getMenuInflater();
            Iterator it = c0173j.f3118b.iterator();
            while (it.hasNext()) {
                ((InterfaceC0174k) it.next()).c(menu, menuInflater);
            }
            return true;
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i4, MenuItem menuItem) {
        if (super.onMenuItemSelected(i4, menuItem)) {
            return true;
        }
        if (i4 == 0) {
            Iterator it = this.mMenuHostHelper.f3118b.iterator();
            while (it.hasNext()) {
                if (((InterfaceC0174k) it.next()).a(menuItem)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z4) {
        if (this.mDispatchingOnMultiWindowModeChanged) {
            return;
        }
        Iterator it = this.mOnMultiWindowModeChangedListeners.iterator();
        while (it.hasNext()) {
            ((L.a) it.next()).accept(new B.g(z4));
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Iterator it = this.mOnNewIntentListeners.iterator();
        while (it.hasNext()) {
            ((L.a) it.next()).accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i4, Menu menu) {
        Iterator it = this.mMenuHostHelper.f3118b.iterator();
        while (it.hasNext()) {
            ((InterfaceC0174k) it.next()).b(menu);
        }
        super.onPanelClosed(i4, menu);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z4) {
        if (this.mDispatchingOnPictureInPictureModeChanged) {
            return;
        }
        Iterator it = this.mOnPictureInPictureModeChangedListeners.iterator();
        while (it.hasNext()) {
            ((L.a) it.next()).accept(new B.k(z4));
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i4, View view, Menu menu) {
        if (i4 == 0) {
            super.onPreparePanel(i4, view, menu);
            Iterator it = this.mMenuHostHelper.f3118b.iterator();
            while (it.hasNext()) {
                ((InterfaceC0174k) it.next()).d(menu);
            }
            return true;
        }
        return true;
    }

    @Override // android.app.Activity
    @Deprecated
    public void onRequestPermissionsResult(int i4, String[] strArr, int[] iArr) {
        if (this.mActivityResultRegistry.a(i4, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            return;
        }
        super.onRequestPermissionsResult(i4, strArr, iArr);
    }

    @Deprecated
    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        i iVar;
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        U u4 = this.mViewModelStore;
        if (u4 == null && (iVar = (i) getLastNonConfigurationInstance()) != null) {
            u4 = iVar.f2433b;
        }
        if (u4 == null && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        i iVar2 = new i();
        iVar2.f2432a = onRetainCustomNonConfigurationInstance;
        iVar2.f2433b = u4;
        return iVar2;
    }

    @Override // B.e, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        AbstractC0247m lifecycle = getLifecycle();
        if (lifecycle instanceof C0252s) {
            ((C0252s) lifecycle).h(Lifecycle$State.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.c(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i4) {
        super.onTrimMemory(i4);
        Iterator it = this.mOnTrimMemoryListeners.iterator();
        while (it.hasNext()) {
            ((L.a) it.next()).accept(Integer.valueOf(i4));
        }
    }

    public Context peekAvailableContext() {
        return this.mContextAwareHelper.f4152b;
    }

    public final androidx.activity.result.d registerForActivityResult(AbstractC0318b abstractC0318b, androidx.activity.result.h hVar, androidx.activity.result.c cVar) {
        return hVar.c("activity_rq#" + this.mNextLocalRequestCode.getAndIncrement(), this, abstractC0318b, cVar);
    }

    @Override // androidx.core.view.InterfaceC0169f
    public void removeMenuProvider(InterfaceC0174k interfaceC0174k) {
        this.mMenuHostHelper.a(interfaceC0174k);
    }

    @Override // C.c
    public final void removeOnConfigurationChangedListener(L.a aVar) {
        this.mOnConfigurationChangedListeners.remove(aVar);
    }

    public final void removeOnContextAvailableListener(InterfaceC0306b listener) {
        C0305a c0305a = this.mContextAwareHelper;
        c0305a.getClass();
        kotlin.jvm.internal.h.e(listener, "listener");
        ((CopyOnWriteArraySet) c0305a.f4151a).remove(listener);
    }

    @Override // B.i
    public final void removeOnMultiWindowModeChangedListener(L.a aVar) {
        this.mOnMultiWindowModeChangedListeners.remove(aVar);
    }

    public final void removeOnNewIntentListener(L.a aVar) {
        this.mOnNewIntentListeners.remove(aVar);
    }

    @Override // B.j
    public final void removeOnPictureInPictureModeChangedListener(L.a aVar) {
        this.mOnPictureInPictureModeChangedListeners.remove(aVar);
    }

    @Override // C.d
    public final void removeOnTrimMemoryListener(L.a aVar) {
        this.mOnTrimMemoryListeners.remove(aVar);
    }

    @Override // android.app.Activity
    public void reportFullyDrawn() {
        try {
            if (Trace.isEnabled()) {
                Trace.beginSection("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
            o oVar = this.mFullyDrawnReporter;
            synchronized (oVar.f2443b) {
                oVar.f2444c = true;
                Iterator it = ((ArrayList) oVar.f2445d).iterator();
                while (it.hasNext()) {
                    ((m3.a) it.next()).invoke();
                }
                ((ArrayList) oVar.f2445d).clear();
                e3.f fVar = e3.f.f9037a;
            }
        } finally {
            Trace.endSection();
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i4) {
        initViewTreeOwners();
        this.mReportFullyDrawnExecutor.h(getWindow().getDecorView());
        super.setContentView(i4);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(Intent intent, int i4) {
        super.startActivityForResult(intent, i4);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i4, Intent intent, int i5, int i6, int i7) {
        super.startIntentSenderForResult(intentSender, i4, intent, i5, i6, i7);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(Intent intent, int i4, Bundle bundle) {
        super.startActivityForResult(intent, i4, bundle);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i4, Intent intent, int i5, int i6, int i7, Bundle bundle) {
        super.startIntentSenderForResult(intentSender, i4, intent, i5, i6, i7, bundle);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z4, Configuration configuration) {
        this.mDispatchingOnMultiWindowModeChanged = true;
        try {
            super.onMultiWindowModeChanged(z4, configuration);
            this.mDispatchingOnMultiWindowModeChanged = false;
            Iterator it = this.mOnMultiWindowModeChangedListeners.iterator();
            while (it.hasNext()) {
                ((L.a) it.next()).accept(new B.g(z4, 0));
            }
        } catch (Throwable th) {
            this.mDispatchingOnMultiWindowModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z4, Configuration configuration) {
        this.mDispatchingOnPictureInPictureModeChanged = true;
        try {
            super.onPictureInPictureModeChanged(z4, configuration);
            this.mDispatchingOnPictureInPictureModeChanged = false;
            Iterator it = this.mOnPictureInPictureModeChangedListeners.iterator();
            while (it.hasNext()) {
                ((L.a) it.next()).accept(new B.k(z4, 0));
            }
        } catch (Throwable th) {
            this.mDispatchingOnPictureInPictureModeChanged = false;
            throw th;
        }
    }

    public final androidx.activity.result.d registerForActivityResult(AbstractC0318b abstractC0318b, androidx.activity.result.c cVar) {
        return registerForActivityResult(abstractC0318b, this.mActivityResultRegistry, cVar);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        initViewTreeOwners();
        this.mReportFullyDrawnExecutor.h(getWindow().getDecorView());
        super.setContentView(view);
    }

    public void addMenuProvider(final InterfaceC0174k interfaceC0174k, InterfaceC0251q interfaceC0251q) {
        final C0173j c0173j = this.mMenuHostHelper;
        c0173j.f3118b.add(interfaceC0174k);
        c0173j.f3117a.run();
        AbstractC0247m lifecycle = interfaceC0251q.getLifecycle();
        HashMap hashMap = (HashMap) c0173j.f3119c;
        C0172i c0172i = (C0172i) hashMap.remove(interfaceC0174k);
        if (c0172i != null) {
            c0172i.f3115a.c(c0172i.f3116b);
            c0172i.f3116b = null;
        }
        hashMap.put(interfaceC0174k, new C0172i(lifecycle, new InterfaceC0249o() { // from class: androidx.core.view.g
            @Override // androidx.lifecycle.InterfaceC0249o
            public final void b(InterfaceC0251q interfaceC0251q2, Lifecycle$Event lifecycle$Event) {
                Lifecycle$Event lifecycle$Event2 = Lifecycle$Event.ON_DESTROY;
                C0173j c0173j2 = C0173j.this;
                if (lifecycle$Event == lifecycle$Event2) {
                    c0173j2.a(interfaceC0174k);
                } else {
                    c0173j2.getClass();
                }
            }
        }));
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        this.mReportFullyDrawnExecutor.h(getWindow().getDecorView());
        super.setContentView(view, layoutParams);
    }

    public void addMenuProvider(final InterfaceC0174k interfaceC0174k, InterfaceC0251q interfaceC0251q, final Lifecycle$State lifecycle$State) {
        final C0173j c0173j = this.mMenuHostHelper;
        c0173j.getClass();
        AbstractC0247m lifecycle = interfaceC0251q.getLifecycle();
        HashMap hashMap = (HashMap) c0173j.f3119c;
        C0172i c0172i = (C0172i) hashMap.remove(interfaceC0174k);
        if (c0172i != null) {
            c0172i.f3115a.c(c0172i.f3116b);
            c0172i.f3116b = null;
        }
        hashMap.put(interfaceC0174k, new C0172i(lifecycle, new InterfaceC0249o() { // from class: androidx.core.view.h
            @Override // androidx.lifecycle.InterfaceC0249o
            public final void b(InterfaceC0251q interfaceC0251q2, Lifecycle$Event lifecycle$Event) {
                C0173j c0173j2 = C0173j.this;
                c0173j2.getClass();
                Lifecycle$Event.Companion.getClass();
                Lifecycle$State lifecycle$State2 = lifecycle$State;
                Lifecycle$Event c4 = C0245k.c(lifecycle$State2);
                Runnable runnable = c0173j2.f3117a;
                CopyOnWriteArrayList copyOnWriteArrayList = c0173j2.f3118b;
                InterfaceC0174k interfaceC0174k2 = interfaceC0174k;
                if (lifecycle$Event == c4) {
                    copyOnWriteArrayList.add(interfaceC0174k2);
                    runnable.run();
                } else if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
                    c0173j2.a(interfaceC0174k2);
                } else if (lifecycle$Event == C0245k.a(lifecycle$State2)) {
                    copyOnWriteArrayList.remove(interfaceC0174k2);
                    runnable.run();
                }
            }
        }));
    }

    public l(int i4) {
        this();
        this.mContentLayoutId = i4;
    }
}
