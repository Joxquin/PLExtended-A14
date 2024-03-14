package androidx.fragment.app;

import a0.InterfaceC0151d;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import androidx.lifecycle.C0252s;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import b.InterfaceC0306b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public class P extends androidx.activity.l implements B.a {
    static final String LIFECYCLE_TAG = "android:support:lifecycle";
    boolean mCreated;
    final C0252s mFragmentLifecycleRegistry;
    final V mFragments;
    boolean mResumed;
    boolean mStopped;

    public P() {
        this.mFragments = new V(new O(this));
        this.mFragmentLifecycleRegistry = new C0252s(this);
        this.mStopped = true;
        init();
    }

    private void init() {
        getSavedStateRegistry().c(LIFECYCLE_TAG, new InterfaceC0151d() { // from class: androidx.fragment.app.L
            @Override // a0.InterfaceC0151d
            public final Bundle a() {
                Bundle lambda$init$0;
                lambda$init$0 = P.this.lambda$init$0();
                return lambda$init$0;
            }
        });
        addOnConfigurationChangedListener(new L.a(this) { // from class: androidx.fragment.app.M

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ P f3314b;

            {
                this.f3314b = this;
            }

            @Override // L.a
            public final void accept(Object obj) {
                int i4 = r2;
                P p4 = this.f3314b;
                switch (i4) {
                    case 0:
                        p4.lambda$init$1((Configuration) obj);
                        return;
                    default:
                        p4.lambda$init$2((Intent) obj);
                        return;
                }
            }
        });
        addOnNewIntentListener(new L.a(this) { // from class: androidx.fragment.app.M

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ P f3314b;

            {
                this.f3314b = this;
            }

            @Override // L.a
            public final void accept(Object obj) {
                int i4 = r2;
                P p4 = this.f3314b;
                switch (i4) {
                    case 0:
                        p4.lambda$init$1((Configuration) obj);
                        return;
                    default:
                        p4.lambda$init$2((Intent) obj);
                        return;
                }
            }
        });
        addOnContextAvailableListener(new InterfaceC0306b() { // from class: androidx.fragment.app.N
            @Override // b.InterfaceC0306b
            public final void a(Context context) {
                P.this.lambda$init$3(context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bundle lambda$init$0() {
        markFragmentsCreated();
        this.mFragmentLifecycleRegistry.f(Lifecycle$Event.ON_STOP);
        return new Bundle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$1(Configuration configuration) {
        this.mFragments.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$2(Intent intent) {
        this.mFragments.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$init$3(Context context) {
        W w4 = this.mFragments.f3354a;
        w4.f3358g.b(w4, w4, null);
    }

    private static boolean markState(AbstractC0220p0 abstractC0220p0, Lifecycle$State lifecycle$State) {
        boolean z4 = false;
        for (K k4 : abstractC0220p0.f3466c.f()) {
            if (k4 != null) {
                if (k4.getHost() != null) {
                    z4 |= markState(k4.getChildFragmentManager(), lifecycle$State);
                }
                K0 k02 = k4.mViewLifecycleOwner;
                Lifecycle$State lifecycle$State2 = Lifecycle$State.STARTED;
                if (k02 != null) {
                    k02.b();
                    if (k02.f3300g.f3616c.a(lifecycle$State2)) {
                        k4.mViewLifecycleOwner.f3300g.h(lifecycle$State);
                        z4 = true;
                    }
                }
                if (k4.mLifecycleRegistry.f3616c.a(lifecycle$State2)) {
                    k4.mLifecycleRegistry.h(lifecycle$State);
                    z4 = true;
                }
            }
        }
        return z4;
    }

    public final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.f3354a.f3358g.f3469f.onCreateView(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (shouldDumpInternalState(strArr)) {
            printWriter.print(str);
            printWriter.print("Local FragmentActivity ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(" State:");
            String str2 = str + "  ";
            printWriter.print(str2);
            printWriter.print("mCreated=");
            printWriter.print(this.mCreated);
            printWriter.print(" mResumed=");
            printWriter.print(this.mResumed);
            printWriter.print(" mStopped=");
            printWriter.print(this.mStopped);
            if (getApplication() != null) {
                W.a.a(this).b(str2, printWriter);
            }
            this.mFragments.f3354a.f3358g.u(str, fileDescriptor, printWriter, strArr);
        }
    }

    public AbstractC0220p0 getSupportFragmentManager() {
        return this.mFragments.f3354a.f3358g;
    }

    @Deprecated
    public W.a getSupportLoaderManager() {
        return W.a.a(this);
    }

    public void markFragmentsCreated() {
        do {
        } while (markState(getSupportFragmentManager(), Lifecycle$State.CREATED));
    }

    @Override // androidx.activity.l, android.app.Activity
    public void onActivityResult(int i4, int i5, Intent intent) {
        this.mFragments.a();
        super.onActivityResult(i4, i5, intent);
    }

    @Deprecated
    public void onAttachFragment(K k4) {
    }

    @Override // androidx.activity.l, B.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.f(Lifecycle$Event.ON_CREATE);
        C0222q0 c0222q0 = this.mFragments.f3354a.f3358g;
        c0222q0.f3455F = false;
        c0222q0.f3456G = false;
        c0222q0.f3462M.f3518i = false;
        c0222q0.t(1);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mFragments.f3354a.f3358g.k();
        this.mFragmentLifecycleRegistry.f(Lifecycle$Event.ON_DESTROY);
    }

    @Override // androidx.activity.l, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i4, MenuItem menuItem) {
        if (super.onMenuItemSelected(i4, menuItem)) {
            return true;
        }
        if (i4 == 6) {
            return this.mFragments.f3354a.f3358g.i(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.f3354a.f3358g.t(5);
        this.mFragmentLifecycleRegistry.f(Lifecycle$Event.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @Override // androidx.activity.l, android.app.Activity
    public void onRequestPermissionsResult(int i4, String[] strArr, int[] iArr) {
        this.mFragments.a();
        super.onRequestPermissionsResult(i4, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        this.mFragments.a();
        super.onResume();
        this.mResumed = true;
        this.mFragments.f3354a.f3358g.x(true);
    }

    public void onResumeFragments() {
        this.mFragmentLifecycleRegistry.f(Lifecycle$Event.ON_RESUME);
        C0222q0 c0222q0 = this.mFragments.f3354a.f3358g;
        c0222q0.f3455F = false;
        c0222q0.f3456G = false;
        c0222q0.f3462M.f3518i = false;
        c0222q0.t(7);
    }

    @Override // android.app.Activity
    public void onStart() {
        this.mFragments.a();
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            C0222q0 c0222q0 = this.mFragments.f3354a.f3358g;
            c0222q0.f3455F = false;
            c0222q0.f3456G = false;
            c0222q0.f3462M.f3518i = false;
            c0222q0.t(4);
        }
        this.mFragments.f3354a.f3358g.x(true);
        this.mFragmentLifecycleRegistry.f(Lifecycle$Event.ON_START);
        C0222q0 c0222q02 = this.mFragments.f3354a.f3358g;
        c0222q02.f3455F = false;
        c0222q02.f3456G = false;
        c0222q02.f3462M.f3518i = false;
        c0222q02.t(5);
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.a();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        C0222q0 c0222q0 = this.mFragments.f3354a.f3358g;
        c0222q0.f3456G = true;
        c0222q0.f3462M.f3518i = true;
        c0222q0.t(4);
        this.mFragmentLifecycleRegistry.f(Lifecycle$Event.ON_STOP);
    }

    public void setEnterSharedElementCallback(B.l lVar) {
        Object obj = B.c.f105a;
        setEnterSharedElementCallback(lVar != null ? new B.b(lVar) : null);
    }

    public void setExitSharedElementCallback(B.l lVar) {
        Object obj = B.c.f105a;
        setExitSharedElementCallback(lVar != null ? new B.b(lVar) : null);
    }

    public void startActivityFromFragment(K k4, Intent intent, int i4) {
        startActivityFromFragment(k4, intent, i4, (Bundle) null);
    }

    @Deprecated
    public void startIntentSenderFromFragment(K k4, IntentSender intentSender, int i4, Intent intent, int i5, int i6, int i7, Bundle bundle) {
        if (i4 != -1) {
            k4.startIntentSenderForResult(intentSender, i4, intent, i5, i6, i7, bundle);
            return;
        }
        Object obj = B.c.f105a;
        startIntentSenderForResult(intentSender, i4, intent, i5, i6, i7, bundle);
    }

    public void supportFinishAfterTransition() {
        Object obj = B.c.f105a;
        finishAfterTransition();
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateMenu();
    }

    public void supportPostponeEnterTransition() {
        Object obj = B.c.f105a;
        postponeEnterTransition();
    }

    public void supportStartPostponedEnterTransition() {
        Object obj = B.c.f105a;
        startPostponedEnterTransition();
    }

    @Override // B.a
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i4) {
    }

    public void startActivityFromFragment(K k4, Intent intent, int i4, Bundle bundle) {
        if (i4 == -1) {
            Object obj = B.c.f105a;
            startActivityForResult(intent, -1, bundle);
            return;
        }
        k4.startActivityForResult(intent, i4, bundle);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    public P(int i4) {
        super(i4);
        this.mFragments = new V(new O(this));
        this.mFragmentLifecycleRegistry = new C0252s(this);
        this.mStopped = true;
        init();
    }
}
