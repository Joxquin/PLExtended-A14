package androidx.fragment.app;

import a0.C0152e;
import a0.C0153f;
import a0.C0155h;
import a0.InterfaceC0154g;
import android.animation.Animator;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.strictmode.FragmentStrictMode$Flag;
import androidx.fragment.app.strictmode.GetRetainInstanceUsageViolation;
import androidx.fragment.app.strictmode.GetTargetFragmentRequestCodeUsageViolation;
import androidx.fragment.app.strictmode.GetTargetFragmentUsageViolation;
import androidx.fragment.app.strictmode.SetRetainInstanceUsageViolation;
import androidx.fragment.app.strictmode.SetTargetFragmentUsageViolation;
import androidx.fragment.app.strictmode.SetUserVisibleHintViolation;
import androidx.lifecycle.AbstractC0247m;
import androidx.lifecycle.C0252s;
import androidx.lifecycle.InterfaceC0242h;
import androidx.lifecycle.InterfaceC0249o;
import androidx.lifecycle.InterfaceC0251q;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import c.AbstractC0318b;
import com.android.systemui.shared.R;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import n.InterfaceC1312a;
import s.C1391a;
/* loaded from: classes.dex */
public class K implements ComponentCallbacks, View.OnCreateContextMenuListener, InterfaceC0251q, androidx.lifecycle.V, InterfaceC0242h, InterfaceC0154g {
    static final int ACTIVITY_CREATED = 4;
    static final int ATTACHED = 0;
    static final int AWAITING_ENTER_EFFECTS = 6;
    static final int AWAITING_EXIT_EFFECTS = 3;
    static final int CREATED = 1;
    static final int INITIALIZING = -1;
    static final int RESUMED = 7;
    static final int STARTED = 5;
    static final Object USE_DEFAULT_TRANSITION = new Object();
    static final int VIEW_CREATED = 2;
    boolean mAdded;
    G mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    boolean mBeingSaved;
    private boolean mCalled;
    AbstractC0220p0 mChildFragmentManager;
    ViewGroup mContainer;
    int mContainerId;
    private int mContentLayoutId;
    androidx.lifecycle.Q mDefaultFactory;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    AbstractC0220p0 mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    W mHost;
    boolean mInLayout;
    boolean mIsCreated;
    private Boolean mIsPrimaryNavigationFragment;
    LayoutInflater mLayoutInflater;
    C0252s mLifecycleRegistry;
    Lifecycle$State mMaxState;
    boolean mMenuVisible;
    private final AtomicInteger mNextLocalRequestCode;
    private final ArrayList mOnPreAttachedListeners;
    K mParentFragment;
    boolean mPerformedCreateView;
    Runnable mPostponedDurationRunnable;
    public String mPreviousWho;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetainInstanceChangedWhileDetached;
    Bundle mSavedFragmentState;
    private final H mSavedStateAttachListener;
    C0153f mSavedStateRegistryController;
    Boolean mSavedUserVisibleHint;
    Bundle mSavedViewRegistryState;
    SparseArray mSavedViewState;
    int mState;
    String mTag;
    K mTarget;
    int mTargetRequestCode;
    String mTargetWho;
    boolean mUserVisibleHint;
    View mView;
    K0 mViewLifecycleOwner;
    androidx.lifecycle.y mViewLifecycleOwnerLiveData;
    String mWho;

    public K() {
        this.mState = -1;
        this.mWho = UUID.randomUUID().toString();
        this.mTargetWho = null;
        this.mIsPrimaryNavigationFragment = null;
        this.mChildFragmentManager = new C0222q0();
        this.mMenuVisible = true;
        this.mUserVisibleHint = true;
        this.mPostponedDurationRunnable = new RunnableC0233y(this, 0);
        this.mMaxState = Lifecycle$State.RESUMED;
        this.mViewLifecycleOwnerLiveData = new androidx.lifecycle.y();
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mOnPreAttachedListeners = new ArrayList();
        this.mSavedStateAttachListener = new C0234z(this);
        initLifecycle();
    }

    private G ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new G();
        }
        return this.mAnimationInfo;
    }

    private int getMinimumMaxLifecycleState() {
        Lifecycle$State lifecycle$State = this.mMaxState;
        return (lifecycle$State == Lifecycle$State.INITIALIZED || this.mParentFragment == null) ? lifecycle$State.ordinal() : Math.min(lifecycle$State.ordinal(), this.mParentFragment.getMinimumMaxLifecycleState());
    }

    private void initLifecycle() {
        this.mLifecycleRegistry = new C0252s(this);
        this.mSavedStateRegistryController = new C0153f(this);
        this.mDefaultFactory = null;
        if (this.mOnPreAttachedListeners.contains(this.mSavedStateAttachListener)) {
            return;
        }
        registerOnPreAttachListener(this.mSavedStateAttachListener);
    }

    @Deprecated
    public static K instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$performCreateView$0() {
        K0 k02 = this.mViewLifecycleOwner;
        k02.f3301h.b(this.mSavedViewRegistryState);
        this.mSavedViewRegistryState = null;
    }

    private androidx.activity.result.d prepareCallInternal(AbstractC0318b abstractC0318b, InterfaceC1312a interfaceC1312a, androidx.activity.result.c cVar) {
        if (this.mState <= 1) {
            AtomicReference atomicReference = new AtomicReference();
            registerOnPreAttachListener(new F(this, interfaceC1312a, atomicReference, abstractC0318b, cVar));
            return new C0232x(atomicReference);
        }
        throw new IllegalStateException(B.a("Fragment ", this, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."));
    }

    private void registerOnPreAttachListener(H h4) {
        if (this.mState >= 0) {
            h4.a();
        } else {
            this.mOnPreAttachedListeners.add(h4);
        }
    }

    public void callStartTransitionListener(boolean z4) {
        ViewGroup viewGroup;
        AbstractC0220p0 abstractC0220p0;
        G g4 = this.mAnimationInfo;
        if (g4 != null) {
            g4.f3289u = false;
        }
        if (this.mView == null || (viewGroup = this.mContainer) == null || (abstractC0220p0 = this.mFragmentManager) == null) {
            return;
        }
        U0 j4 = U0.j(viewGroup, abstractC0220p0);
        j4.k();
        if (z4) {
            this.mHost.f3357f.post(new A(j4));
        } else {
            j4.g();
        }
    }

    public U createFragmentContainer() {
        return new C(this);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        if (this.mSavedViewRegistryState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.mSavedViewRegistryState);
        }
        K targetFragment = getTargetFragment(false);
        if (targetFragment != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(targetFragment);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        printWriter.println(getPopDirection());
        if (getEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            printWriter.println(getEnterAnim());
        }
        if (getExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            printWriter.println(getExitAnim());
        }
        if (getPopEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            printWriter.println(getPopEnterAnim());
        }
        if (getPopExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            printWriter.println(getPopExitAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
        }
        if (getContext() != null) {
            W.a.a(this).b(str, printWriter);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        this.mChildFragmentManager.u(C1391a.a(str, "  "), fileDescriptor, printWriter, strArr);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public K findFragmentByWho(String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.f3466c.c(str);
    }

    public String generateActivityResultKey() {
        return "fragment_" + this.mWho + "_rq#" + this.mNextLocalRequestCode.getAndIncrement();
    }

    public final P getActivity() {
        W w4 = this.mHost;
        if (w4 == null) {
            return null;
        }
        return (P) w4.f3355d;
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        G g4 = this.mAnimationInfo;
        if (g4 == null || (bool = g4.f3284p) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        G g4 = this.mAnimationInfo;
        if (g4 == null || (bool = g4.f3283o) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public View getAnimatingAway() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return null;
        }
        g4.getClass();
        return null;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final AbstractC0220p0 getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new IllegalStateException(B.a("Fragment ", this, " has not been attached yet."));
    }

    public Context getContext() {
        W w4 = this.mHost;
        if (w4 == null) {
            return null;
        }
        return w4.f3356e;
    }

    @Override // androidx.lifecycle.InterfaceC0242h
    public V.b getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            } else if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            } else {
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
        }
        if (application == null && AbstractC0220p0.H(3)) {
            Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
        }
        V.d dVar = new V.d();
        Map map = dVar.f1779a;
        if (application != null) {
            map.put(androidx.lifecycle.O.f3583a, application);
        }
        map.put(androidx.lifecycle.I.f3557a, this);
        map.put(androidx.lifecycle.I.f3558b, this);
        if (getArguments() != null) {
            map.put(androidx.lifecycle.I.f3559c, getArguments());
        }
        return dVar;
    }

    public androidx.lifecycle.Q getDefaultViewModelProviderFactory() {
        Application application;
        if (this.mFragmentManager != null) {
            if (this.mDefaultFactory == null) {
                Context applicationContext = requireContext().getApplicationContext();
                while (true) {
                    if (!(applicationContext instanceof ContextWrapper)) {
                        application = null;
                        break;
                    } else if (applicationContext instanceof Application) {
                        application = (Application) applicationContext;
                        break;
                    } else {
                        applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
                    }
                }
                if (application == null && AbstractC0220p0.H(3)) {
                    Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory");
                }
                this.mDefaultFactory = new androidx.lifecycle.L(application, this, getArguments());
            }
            return this.mDefaultFactory;
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    public int getEnterAnim() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return 0;
        }
        return g4.f3270b;
    }

    public Object getEnterTransition() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return null;
        }
        return g4.f3277i;
    }

    public B.l getEnterTransitionCallback() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return null;
        }
        return g4.f3285q;
    }

    public int getExitAnim() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return 0;
        }
        return g4.f3271c;
    }

    public Object getExitTransition() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return null;
        }
        return g4.f3279k;
    }

    public B.l getExitTransitionCallback() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return null;
        }
        return g4.f3286r;
    }

    public View getFocusedView() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return null;
        }
        return g4.f3288t;
    }

    @Deprecated
    public final AbstractC0220p0 getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        W w4 = this.mHost;
        if (w4 == null) {
            return null;
        }
        return w4.e();
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater(null) : layoutInflater;
    }

    @Override // androidx.lifecycle.InterfaceC0251q
    public AbstractC0247m getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public W.a getLoaderManager() {
        return W.a.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNextTransition() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return 0;
        }
        return g4.f3274f;
    }

    public final K getParentFragment() {
        return this.mParentFragment;
    }

    public final AbstractC0220p0 getParentFragmentManager() {
        AbstractC0220p0 abstractC0220p0 = this.mFragmentManager;
        if (abstractC0220p0 != null) {
            return abstractC0220p0;
        }
        throw new IllegalStateException(B.a("Fragment ", this, " not associated with a fragment manager."));
    }

    public boolean getPopDirection() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return false;
        }
        return g4.f3269a;
    }

    public int getPopEnterAnim() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return 0;
        }
        return g4.f3272d;
    }

    public int getPopExitAnim() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return 0;
        }
        return g4.f3273e;
    }

    public float getPostOnViewCreatedAlpha() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return 1.0f;
        }
        return g4.f3287s;
    }

    public Object getReenterTransition() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return null;
        }
        Object obj = g4.f3280l;
        return obj == USE_DEFAULT_TRANSITION ? getExitTransition() : obj;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Deprecated
    public final boolean getRetainInstance() {
        T.b bVar = T.c.f1688a;
        GetRetainInstanceUsageViolation getRetainInstanceUsageViolation = new GetRetainInstanceUsageViolation(this);
        T.c.c(getRetainInstanceUsageViolation);
        T.b a4 = T.c.a(this);
        if (a4.f1686a.contains(FragmentStrictMode$Flag.DETECT_RETAIN_INSTANCE_USAGE) && T.c.e(a4, getClass(), GetRetainInstanceUsageViolation.class)) {
            T.c.b(a4, getRetainInstanceUsageViolation);
        }
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return null;
        }
        Object obj = g4.f3278j;
        return obj == USE_DEFAULT_TRANSITION ? getEnterTransition() : obj;
    }

    @Override // a0.InterfaceC0154g
    public final C0152e getSavedStateRegistry() {
        return this.mSavedStateRegistryController.f2389b;
    }

    public Object getSharedElementEnterTransition() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return null;
        }
        return g4.f3281m;
    }

    public Object getSharedElementReturnTransition() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return null;
        }
        Object obj = g4.f3282n;
        return obj == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : obj;
    }

    public ArrayList getSharedElementSourceNames() {
        ArrayList arrayList;
        G g4 = this.mAnimationInfo;
        return (g4 == null || (arrayList = g4.f3275g) == null) ? new ArrayList() : arrayList;
    }

    public ArrayList getSharedElementTargetNames() {
        ArrayList arrayList;
        G g4 = this.mAnimationInfo;
        return (g4 == null || (arrayList = g4.f3276h) == null) ? new ArrayList() : arrayList;
    }

    public final String getString(int i4) {
        return getResources().getString(i4);
    }

    public final String getTag() {
        return this.mTag;
    }

    @Deprecated
    public final K getTargetFragment() {
        return getTargetFragment(true);
    }

    @Deprecated
    public final int getTargetRequestCode() {
        T.b bVar = T.c.f1688a;
        GetTargetFragmentRequestCodeUsageViolation getTargetFragmentRequestCodeUsageViolation = new GetTargetFragmentRequestCodeUsageViolation(this);
        T.c.c(getTargetFragmentRequestCodeUsageViolation);
        T.b a4 = T.c.a(this);
        if (a4.f1686a.contains(FragmentStrictMode$Flag.DETECT_TARGET_FRAGMENT_USAGE) && T.c.e(a4, getClass(), GetTargetFragmentRequestCodeUsageViolation.class)) {
            T.c.b(a4, getTargetFragmentRequestCodeUsageViolation);
        }
        return this.mTargetRequestCode;
    }

    public final CharSequence getText(int i4) {
        return getResources().getText(i4);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    public View getView() {
        return this.mView;
    }

    public InterfaceC0251q getViewLifecycleOwner() {
        K0 k02 = this.mViewLifecycleOwner;
        if (k02 != null) {
            return k02;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    public androidx.lifecycle.x getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // androidx.lifecycle.V
    public androidx.lifecycle.U getViewModelStore() {
        if (this.mFragmentManager != null) {
            if (getMinimumMaxLifecycleState() != 1) {
                HashMap hashMap = this.mFragmentManager.f3462M.f3515f;
                androidx.lifecycle.U u4 = (androidx.lifecycle.U) hashMap.get(this.mWho);
                if (u4 == null) {
                    androidx.lifecycle.U u5 = new androidx.lifecycle.U();
                    hashMap.put(this.mWho, u5);
                    return u5;
                }
                return u4;
            }
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initState() {
        initLifecycle();
        this.mPreviousWho = this.mWho;
        this.mWho = UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new C0222q0();
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        if (!this.mHidden) {
            AbstractC0220p0 abstractC0220p0 = this.mFragmentManager;
            if (abstractC0220p0 == null) {
                return false;
            }
            K k4 = this.mParentFragment;
            abstractC0220p0.getClass();
            if (!(k4 == null ? false : k4.isHidden())) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        if (this.mMenuVisible) {
            if (this.mFragmentManager == null) {
                return true;
            }
            K k4 = this.mParentFragment;
            if (k4 == null ? true : k4.isMenuVisible()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isPostponed() {
        G g4 = this.mAnimationInfo;
        if (g4 == null) {
            return false;
        }
        return g4.f3289u;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isResumed() {
        return this.mState >= 7;
    }

    public final boolean isStateSaved() {
        AbstractC0220p0 abstractC0220p0 = this.mFragmentManager;
        if (abstractC0220p0 == null) {
            return false;
        }
        return abstractC0220p0.L();
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void noteStateNotSaved() {
        this.mChildFragmentManager.N();
    }

    @Deprecated
    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    @Deprecated
    public void onActivityResult(int i4, int i5, Intent intent) {
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i4 + " resultCode: " + i5 + " data: " + intent);
        }
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        W w4 = this.mHost;
        Activity activity = w4 == null ? null : w4.f3355d;
        if (activity != null) {
            this.mCalled = false;
            onAttach(activity);
        }
    }

    @Deprecated
    public void onAttachFragment(K k4) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState();
        AbstractC0220p0 abstractC0220p0 = this.mChildFragmentManager;
        if (abstractC0220p0.f3483t >= 1) {
            return;
        }
        abstractC0220p0.f3455F = false;
        abstractC0220p0.f3456G = false;
        abstractC0220p0.f3462M.f3518i = false;
        abstractC0220p0.t(1);
    }

    public Animation onCreateAnimation(int i4, boolean z4, int i5) {
        return null;
    }

    public Animator onCreateAnimator(int i4, boolean z4, int i5) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Deprecated
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i4 = this.mContentLayoutId;
        if (i4 != 0) {
            return layoutInflater.inflate(i4, viewGroup, false);
        }
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
    }

    @Deprecated
    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z4) {
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
        W w4 = this.mHost;
        Activity activity = w4 == null ? null : w4.f3355d;
        if (activity != null) {
            this.mCalled = false;
            onInflate(activity, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean z4) {
    }

    @Deprecated
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    @Deprecated
    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean z4) {
    }

    @Deprecated
    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z4) {
    }

    @Deprecated
    public void onRequestPermissionsResult(int i4, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.mCalled = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.N();
        this.mState = 3;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (!this.mCalled) {
            throw new SuperNotCalledException(B.a("Fragment ", this, " did not call through to super.onActivityCreated()"));
        }
        restoreViewState();
        AbstractC0220p0 abstractC0220p0 = this.mChildFragmentManager;
        abstractC0220p0.f3455F = false;
        abstractC0220p0.f3456G = false;
        abstractC0220p0.f3462M.f3518i = false;
        abstractC0220p0.t(4);
    }

    public void performAttach() {
        Iterator it = this.mOnPreAttachedListeners.iterator();
        while (it.hasNext()) {
            ((H) it.next()).a();
        }
        this.mOnPreAttachedListeners.clear();
        this.mChildFragmentManager.b(this.mHost, createFragmentContainer(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach(this.mHost.f3356e);
        if (!this.mCalled) {
            throw new SuperNotCalledException(B.a("Fragment ", this, " did not call through to super.onAttach()"));
        }
        Iterator it2 = this.mFragmentManager.f3477n.iterator();
        while (it2.hasNext()) {
            ((v0) it2.next()).a(this);
        }
        AbstractC0220p0 abstractC0220p0 = this.mChildFragmentManager;
        abstractC0220p0.f3455F = false;
        abstractC0220p0.f3456G = false;
        abstractC0220p0.f3462M.f3518i = false;
        abstractC0220p0.t(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean performContextItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (onContextItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.i(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performCreate(Bundle bundle) {
        this.mChildFragmentManager.N();
        this.mState = 1;
        this.mCalled = false;
        this.mLifecycleRegistry.a(new InterfaceC0249o() { // from class: androidx.fragment.app.Fragment$6
            @Override // androidx.lifecycle.InterfaceC0249o
            public final void b(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
                View view;
                if (lifecycle$Event != Lifecycle$Event.ON_STOP || (view = K.this.mView) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
            }
        });
        onCreate(bundle);
        this.mIsCreated = true;
        if (!this.mCalled) {
            throw new SuperNotCalledException(B.a("Fragment ", this, " did not call through to super.onCreate()"));
        }
        this.mLifecycleRegistry.f(Lifecycle$Event.ON_CREATE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean performCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z4 = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onCreateOptionsMenu(menu, menuInflater);
            z4 = true;
        }
        return z4 | this.mChildFragmentManager.j(menu, menuInflater);
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [androidx.fragment.app.w] */
    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.N();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new K0(this, getViewModelStore(), new Runnable() { // from class: androidx.fragment.app.w
            @Override // java.lang.Runnable
            public final void run() {
                K.this.lambda$performCreateView$0();
            }
        });
        View onCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = onCreateView;
        if (onCreateView == null) {
            if (this.mViewLifecycleOwner.f3300g != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.mViewLifecycleOwner = null;
            return;
        }
        this.mViewLifecycleOwner.b();
        androidx.lifecycle.W.b(this.mView, this.mViewLifecycleOwner);
        View view = this.mView;
        K0 k02 = this.mViewLifecycleOwner;
        kotlin.jvm.internal.h.e(view, "<this>");
        view.setTag(R.id.view_tree_view_model_store_owner, k02);
        C0155h.a(this.mView, this.mViewLifecycleOwner);
        this.mViewLifecycleOwnerLiveData.h(this.mViewLifecycleOwner);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performDestroy() {
        this.mChildFragmentManager.k();
        this.mLifecycleRegistry.f(Lifecycle$Event.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (!this.mCalled) {
            throw new SuperNotCalledException(B.a("Fragment ", this, " did not call through to super.onDestroy()"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performDestroyView() {
        this.mChildFragmentManager.t(1);
        if (this.mView != null) {
            K0 k02 = this.mViewLifecycleOwner;
            k02.b();
            if (k02.f3300g.f3616c.compareTo(Lifecycle$State.CREATED) >= 0) {
                this.mViewLifecycleOwner.a(Lifecycle$Event.ON_DESTROY);
            }
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (!this.mCalled) {
            throw new SuperNotCalledException(B.a("Fragment ", this, " did not call through to super.onDestroyView()"));
        }
        q.n nVar = W.a.a(this).f1871b.f1869d;
        int i4 = nVar.f11970f;
        for (int i5 = 0; i5 < i4; i5++) {
            ((W.b) nVar.f11969e[i5]).getClass();
        }
        this.mPerformedCreateView = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (!this.mCalled) {
            throw new SuperNotCalledException(B.a("Fragment ", this, " did not call through to super.onDetach()"));
        }
        AbstractC0220p0 abstractC0220p0 = this.mChildFragmentManager;
        if (abstractC0220p0.f3457H) {
            return;
        }
        abstractC0220p0.k();
        this.mChildFragmentManager = new C0222q0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LayoutInflater performGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = onGetLayoutInflater;
        return onGetLayoutInflater;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performLowMemory() {
        onLowMemory();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performMultiWindowModeChanged(boolean z4) {
        onMultiWindowModeChanged(z4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean performOptionsItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.o(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performOptionsMenuClosed(Menu menu) {
        if (this.mHidden) {
            return;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onOptionsMenuClosed(menu);
        }
        this.mChildFragmentManager.p(menu);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performPause() {
        this.mChildFragmentManager.t(5);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(Lifecycle$Event.ON_PAUSE);
        }
        this.mLifecycleRegistry.f(Lifecycle$Event.ON_PAUSE);
        this.mState = 6;
        this.mCalled = false;
        onPause();
        if (!this.mCalled) {
            throw new SuperNotCalledException(B.a("Fragment ", this, " did not call through to super.onPause()"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performPictureInPictureModeChanged(boolean z4) {
        onPictureInPictureModeChanged(z4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean performPrepareOptionsMenu(Menu menu) {
        boolean z4 = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onPrepareOptionsMenu(menu);
            z4 = true;
        }
        return z4 | this.mChildFragmentManager.s(menu);
    }

    public void performPrimaryNavigationFragmentChanged() {
        this.mFragmentManager.getClass();
        boolean K3 = AbstractC0220p0.K(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != K3) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(K3);
            onPrimaryNavigationFragmentChanged(K3);
            AbstractC0220p0 abstractC0220p0 = this.mChildFragmentManager;
            abstractC0220p0.d0();
            abstractC0220p0.q(abstractC0220p0.f3487x);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performResume() {
        this.mChildFragmentManager.N();
        this.mChildFragmentManager.x(true);
        this.mState = 7;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new SuperNotCalledException(B.a("Fragment ", this, " did not call through to super.onResume()"));
        }
        C0252s c0252s = this.mLifecycleRegistry;
        Lifecycle$Event lifecycle$Event = Lifecycle$Event.ON_RESUME;
        c0252s.f(lifecycle$Event);
        if (this.mView != null) {
            this.mViewLifecycleOwner.f3300g.f(lifecycle$Event);
        }
        AbstractC0220p0 abstractC0220p0 = this.mChildFragmentManager;
        abstractC0220p0.f3455F = false;
        abstractC0220p0.f3456G = false;
        abstractC0220p0.f3462M.f3518i = false;
        abstractC0220p0.t(7);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performStart() {
        this.mChildFragmentManager.N();
        this.mChildFragmentManager.x(true);
        this.mState = 5;
        this.mCalled = false;
        onStart();
        if (!this.mCalled) {
            throw new SuperNotCalledException(B.a("Fragment ", this, " did not call through to super.onStart()"));
        }
        C0252s c0252s = this.mLifecycleRegistry;
        Lifecycle$Event lifecycle$Event = Lifecycle$Event.ON_START;
        c0252s.f(lifecycle$Event);
        if (this.mView != null) {
            this.mViewLifecycleOwner.f3300g.f(lifecycle$Event);
        }
        AbstractC0220p0 abstractC0220p0 = this.mChildFragmentManager;
        abstractC0220p0.f3455F = false;
        abstractC0220p0.f3456G = false;
        abstractC0220p0.f3462M.f3518i = false;
        abstractC0220p0.t(5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performStop() {
        AbstractC0220p0 abstractC0220p0 = this.mChildFragmentManager;
        abstractC0220p0.f3456G = true;
        abstractC0220p0.f3462M.f3518i = true;
        abstractC0220p0.t(4);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(Lifecycle$Event.ON_STOP);
        }
        this.mLifecycleRegistry.f(Lifecycle$Event.ON_STOP);
        this.mState = 4;
        this.mCalled = false;
        onStop();
        if (!this.mCalled) {
            throw new SuperNotCalledException(B.a("Fragment ", this, " did not call through to super.onStop()"));
        }
    }

    public void performViewCreated() {
        Bundle bundle = this.mSavedFragmentState;
        onViewCreated(this.mView, bundle != null ? bundle.getBundle("savedInstanceState") : null);
        this.mChildFragmentManager.t(2);
    }

    public void postponeEnterTransition() {
        ensureAnimationInfo().f3289u = true;
    }

    public final androidx.activity.result.d registerForActivityResult(AbstractC0318b abstractC0318b, androidx.activity.result.c cVar) {
        return prepareCallInternal(abstractC0318b, new D(this), cVar);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    @Deprecated
    public final void requestPermissions(String[] strArr, int i4) {
        if (this.mHost == null) {
            throw new IllegalStateException(B.a("Fragment ", this, " not attached to Activity"));
        }
        AbstractC0220p0 parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.f3452C == null) {
            parentFragmentManager.f3484u.getClass();
            return;
        }
        parentFragmentManager.f3453D.addLast(new C0214m0(this.mWho, i4));
        parentFragmentManager.f3452C.a(strArr);
    }

    public final P requireActivity() {
        P activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException(B.a("Fragment ", this, " not attached to an activity."));
    }

    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException(B.a("Fragment ", this, " does not have any arguments."));
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException(B.a("Fragment ", this, " not attached to a context."));
    }

    @Deprecated
    public final AbstractC0220p0 requireFragmentManager() {
        return getParentFragmentManager();
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException(B.a("Fragment ", this, " not attached to a host."));
    }

    public final K requireParentFragment() {
        K parentFragment = getParentFragment();
        if (parentFragment == null) {
            if (getContext() == null) {
                throw new IllegalStateException(B.a("Fragment ", this, " is not attached to any Fragment or host"));
            }
            throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
        }
        return parentFragment;
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException(B.a("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
    }

    public void restoreChildFragmentState() {
        Bundle bundle;
        Bundle bundle2 = this.mSavedFragmentState;
        if (bundle2 == null || (bundle = bundle2.getBundle("childFragmentManager")) == null) {
            return;
        }
        this.mChildFragmentManager.T(bundle);
        AbstractC0220p0 abstractC0220p0 = this.mChildFragmentManager;
        abstractC0220p0.f3455F = false;
        abstractC0220p0.f3456G = false;
        abstractC0220p0.f3462M.f3518i = false;
        abstractC0220p0.t(1);
    }

    final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (this.mCalled) {
            if (this.mView != null) {
                this.mViewLifecycleOwner.a(Lifecycle$Event.ON_CREATE);
                return;
            }
            return;
        }
        throw new SuperNotCalledException(B.a("Fragment ", this, " did not call through to super.onViewStateRestored()"));
    }

    public void setAllowEnterTransitionOverlap(boolean z4) {
        ensureAnimationInfo().f3284p = Boolean.valueOf(z4);
    }

    public void setAllowReturnTransitionOverlap(boolean z4) {
        ensureAnimationInfo().f3283o = Boolean.valueOf(z4);
    }

    public void setAnimations(int i4, int i5, int i6, int i7) {
        if (this.mAnimationInfo == null && i4 == 0 && i5 == 0 && i6 == 0 && i7 == 0) {
            return;
        }
        ensureAnimationInfo().f3270b = i4;
        ensureAnimationInfo().f3271c = i5;
        ensureAnimationInfo().f3272d = i6;
        ensureAnimationInfo().f3273e = i7;
    }

    public void setArguments(Bundle bundle) {
        if (this.mFragmentManager != null && isStateSaved()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.mArguments = bundle;
    }

    public void setEnterSharedElementCallback(B.l lVar) {
        ensureAnimationInfo().f3285q = lVar;
    }

    public void setEnterTransition(Object obj) {
        ensureAnimationInfo().f3277i = obj;
    }

    public void setExitSharedElementCallback(B.l lVar) {
        ensureAnimationInfo().f3286r = lVar;
    }

    public void setExitTransition(Object obj) {
        ensureAnimationInfo().f3279k = obj;
    }

    public void setFocusedView(View view) {
        ensureAnimationInfo().f3288t = view;
    }

    @Deprecated
    public void setHasOptionsMenu(boolean z4) {
        if (this.mHasMenu != z4) {
            this.mHasMenu = z4;
            if (!isAdded() || isHidden()) {
                return;
            }
            this.mHost.h();
        }
    }

    public void setInitialSavedState(J j4) {
        if (this.mFragmentManager != null) {
            throw new IllegalStateException("Fragment already added");
        }
        this.mSavedFragmentState = (j4 == null || (r2 = j4.f3296d) == null) ? null : null;
    }

    public void setMenuVisibility(boolean z4) {
        if (this.mMenuVisible != z4) {
            this.mMenuVisible = z4;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                this.mHost.h();
            }
        }
    }

    public void setNextTransition(int i4) {
        if (this.mAnimationInfo == null && i4 == 0) {
            return;
        }
        ensureAnimationInfo();
        this.mAnimationInfo.f3274f = i4;
    }

    public void setPopDirection(boolean z4) {
        if (this.mAnimationInfo == null) {
            return;
        }
        ensureAnimationInfo().f3269a = z4;
    }

    public void setPostOnViewCreatedAlpha(float f4) {
        ensureAnimationInfo().f3287s = f4;
    }

    public void setReenterTransition(Object obj) {
        ensureAnimationInfo().f3280l = obj;
    }

    @Deprecated
    public void setRetainInstance(boolean z4) {
        T.b bVar = T.c.f1688a;
        SetRetainInstanceUsageViolation setRetainInstanceUsageViolation = new SetRetainInstanceUsageViolation(this);
        T.c.c(setRetainInstanceUsageViolation);
        T.b a4 = T.c.a(this);
        if (a4.f1686a.contains(FragmentStrictMode$Flag.DETECT_RETAIN_INSTANCE_USAGE) && T.c.e(a4, getClass(), SetRetainInstanceUsageViolation.class)) {
            T.c.b(a4, setRetainInstanceUsageViolation);
        }
        this.mRetainInstance = z4;
        AbstractC0220p0 abstractC0220p0 = this.mFragmentManager;
        if (abstractC0220p0 == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (z4) {
            abstractC0220p0.f3462M.c(this);
        } else {
            abstractC0220p0.f3462M.f(this);
        }
    }

    public void setReturnTransition(Object obj) {
        ensureAnimationInfo().f3278j = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        ensureAnimationInfo().f3281m = obj;
    }

    public void setSharedElementNames(ArrayList arrayList, ArrayList arrayList2) {
        ensureAnimationInfo();
        G g4 = this.mAnimationInfo;
        g4.f3275g = arrayList;
        g4.f3276h = arrayList2;
    }

    public void setSharedElementReturnTransition(Object obj) {
        ensureAnimationInfo().f3282n = obj;
    }

    @Deprecated
    public void setTargetFragment(K k4, int i4) {
        if (k4 != null) {
            T.b bVar = T.c.f1688a;
            SetTargetFragmentUsageViolation setTargetFragmentUsageViolation = new SetTargetFragmentUsageViolation(this, k4, i4);
            T.c.c(setTargetFragmentUsageViolation);
            T.b a4 = T.c.a(this);
            if (a4.f1686a.contains(FragmentStrictMode$Flag.DETECT_TARGET_FRAGMENT_USAGE) && T.c.e(a4, getClass(), SetTargetFragmentUsageViolation.class)) {
                T.c.b(a4, setTargetFragmentUsageViolation);
            }
        }
        AbstractC0220p0 abstractC0220p0 = this.mFragmentManager;
        AbstractC0220p0 abstractC0220p02 = k4 != null ? k4.mFragmentManager : null;
        if (abstractC0220p0 != null && abstractC0220p02 != null && abstractC0220p0 != abstractC0220p02) {
            throw new IllegalArgumentException(B.a("Fragment ", k4, " must share the same FragmentManager to be set as a target fragment"));
        }
        for (K k5 = k4; k5 != null; k5 = k5.getTargetFragment(false)) {
            if (k5.equals(this)) {
                throw new IllegalArgumentException("Setting " + k4 + " as the target of " + this + " would create a target cycle");
            }
        }
        if (k4 == null) {
            this.mTargetWho = null;
            this.mTarget = null;
        } else if (this.mFragmentManager == null || k4.mFragmentManager == null) {
            this.mTargetWho = null;
            this.mTarget = k4;
        } else {
            this.mTargetWho = k4.mWho;
            this.mTarget = null;
        }
        this.mTargetRequestCode = i4;
    }

    @Deprecated
    public void setUserVisibleHint(boolean z4) {
        T.b bVar = T.c.f1688a;
        SetUserVisibleHintViolation setUserVisibleHintViolation = new SetUserVisibleHintViolation(this, z4);
        T.c.c(setUserVisibleHintViolation);
        T.b a4 = T.c.a(this);
        if (a4.f1686a.contains(FragmentStrictMode$Flag.DETECT_SET_USER_VISIBLE_HINT) && T.c.e(a4, getClass(), SetUserVisibleHintViolation.class)) {
            T.c.b(a4, setUserVisibleHintViolation);
        }
        boolean z5 = true;
        if (!this.mUserVisibleHint && z4 && this.mState < 5 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            AbstractC0220p0 abstractC0220p0 = this.mFragmentManager;
            z0 f4 = abstractC0220p0.f(this);
            K k4 = f4.f3543c;
            if (k4.mDeferStart) {
                if (abstractC0220p0.f3465b) {
                    abstractC0220p0.f3458I = true;
                } else {
                    k4.mDeferStart = false;
                    f4.k();
                }
            }
        }
        this.mUserVisibleHint = z4;
        if (this.mState >= 5 || z4) {
            z5 = false;
        }
        this.mDeferStart = z5;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z4);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        W w4 = this.mHost;
        if (w4 != null) {
            return w4.g(str);
        }
        return false;
    }

    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    @Deprecated
    public void startActivityForResult(Intent intent, int i4) {
        startActivityForResult(intent, i4, null);
    }

    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i4, Intent intent, int i5, int i6, int i7, Bundle bundle) {
        Intent intent2 = intent;
        if (this.mHost == null) {
            throw new IllegalStateException(B.a("Fragment ", this, " not attached to Activity"));
        }
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in startIntentSenderForResult() requestCode: " + i4 + " IntentSender: " + intentSender + " fillInIntent: " + intent + " options: " + bundle);
        }
        AbstractC0220p0 parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.f3451B == null) {
            W w4 = parentFragmentManager.f3484u;
            if (i4 != -1) {
                w4.getClass();
                throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
            }
            Activity activity = w4.f3355d;
            Object obj = B.c.f105a;
            activity.startIntentSenderForResult(intentSender, i4, intent, i5, i6, i7, bundle);
            return;
        }
        if (bundle != null) {
            if (intent2 == null) {
                intent2 = new Intent();
                intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            }
            if (AbstractC0220p0.H(2)) {
                Log.v("FragmentManager", "ActivityOptions " + bundle + " were added to fillInIntent " + intent2 + " for fragment " + this);
            }
            intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        kotlin.jvm.internal.h.e(intentSender, "intentSender");
        androidx.activity.result.k kVar = new androidx.activity.result.k(intentSender, intent2, i5, i6);
        parentFragmentManager.f3453D.addLast(new C0214m0(this.mWho, i4));
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "Fragment " + this + "is launching an IntentSender for result ");
        }
        parentFragmentManager.f3451B.a(kVar);
    }

    public void startPostponedEnterTransition() {
        if (this.mAnimationInfo == null || !ensureAnimationInfo().f3289u) {
            return;
        }
        if (this.mHost == null) {
            ensureAnimationInfo().f3289u = false;
        } else if (Looper.myLooper() != this.mHost.f3357f.getLooper()) {
            this.mHost.f3357f.postAtFrontOfQueue(new RunnableC0233y(this, 1));
        } else {
            callStartTransitionListener(true);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.mWho);
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(" tag=");
            sb.append(this.mTag);
        }
        sb.append(")");
        return sb.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    private K getTargetFragment(boolean z4) {
        String str;
        if (z4) {
            T.b bVar = T.c.f1688a;
            GetTargetFragmentUsageViolation getTargetFragmentUsageViolation = new GetTargetFragmentUsageViolation(this);
            T.c.c(getTargetFragmentUsageViolation);
            T.b a4 = T.c.a(this);
            if (a4.f1686a.contains(FragmentStrictMode$Flag.DETECT_TARGET_FRAGMENT_USAGE) && T.c.e(a4, getClass(), GetTargetFragmentUsageViolation.class)) {
                T.c.b(a4, getTargetFragmentUsageViolation);
            }
        }
        K k4 = this.mTarget;
        if (k4 != null) {
            return k4;
        }
        AbstractC0220p0 abstractC0220p0 = this.mFragmentManager;
        if (abstractC0220p0 == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return abstractC0220p0.A(str);
    }

    @Deprecated
    public static K instantiate(Context context, String str, Bundle bundle) {
        try {
            K k4 = (K) C0204h0.c(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(k4.getClass().getClassLoader());
                k4.setArguments(bundle);
            }
            return k4;
        } catch (IllegalAccessException e4) {
            throw new Fragment$InstantiationException(E.c.a("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e4);
        } catch (InstantiationException e5) {
            throw new Fragment$InstantiationException(E.c.a("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e5);
        } catch (NoSuchMethodException e6) {
            throw new Fragment$InstantiationException(E.c.a("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e6);
        } catch (InvocationTargetException e7) {
            throw new Fragment$InstantiationException(E.c.a("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e7);
        }
    }

    public final String getString(int i4, Object... objArr) {
        return getResources().getString(i4, objArr);
    }

    public final void postponeEnterTransition(long j4, TimeUnit timeUnit) {
        Handler handler;
        ensureAnimationInfo().f3289u = true;
        AbstractC0220p0 abstractC0220p0 = this.mFragmentManager;
        if (abstractC0220p0 != null) {
            handler = abstractC0220p0.f3484u.f3357f;
        } else {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.removeCallbacks(this.mPostponedDurationRunnable);
        handler.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j4));
    }

    public final androidx.activity.result.d registerForActivityResult(AbstractC0318b abstractC0318b, androidx.activity.result.h hVar, androidx.activity.result.c cVar) {
        return prepareCallInternal(abstractC0318b, new E(hVar), cVar);
    }

    public void startActivity(Intent intent, Bundle bundle) {
        W w4 = this.mHost;
        if (w4 != null) {
            Object obj = B.c.f105a;
            w4.f3356e.startActivity(intent, bundle);
            return;
        }
        throw new IllegalStateException(B.a("Fragment ", this, " not attached to Activity"));
    }

    @Deprecated
    public void startActivityForResult(Intent intent, int i4, Bundle bundle) {
        if (this.mHost != null) {
            AbstractC0220p0 parentFragmentManager = getParentFragmentManager();
            if (parentFragmentManager.f3450A != null) {
                parentFragmentManager.f3453D.addLast(new C0214m0(this.mWho, i4));
                if (bundle != null) {
                    intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
                }
                parentFragmentManager.f3450A.a(intent);
                return;
            }
            W w4 = parentFragmentManager.f3484u;
            w4.getClass();
            if (i4 == -1) {
                Object obj = B.c.f105a;
                w4.f3356e.startActivity(intent, bundle);
                return;
            }
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        throw new IllegalStateException(B.a("Fragment ", this, " not attached to Activity"));
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        W w4 = this.mHost;
        if (w4 != null) {
            LayoutInflater f4 = w4.f();
            f4.setFactory2(this.mChildFragmentManager.f3469f);
            return f4;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
    }

    public K(int i4) {
        this();
        this.mContentLayoutId = i4;
    }

    private void restoreViewState() {
        if (AbstractC0220p0.H(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + this);
        }
        if (this.mView != null) {
            Bundle bundle = this.mSavedFragmentState;
            restoreViewState(bundle != null ? bundle.getBundle("savedInstanceState") : null);
        }
        this.mSavedFragmentState = null;
    }
}
