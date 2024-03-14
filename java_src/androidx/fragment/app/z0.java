package androidx.fragment.app;

import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.strictmode.FragmentStrictMode$Flag;
import androidx.fragment.app.strictmode.WrongFragmentContainerViolation;
import androidx.fragment.app.strictmode.WrongNestedHierarchyViolation;
import androidx.lifecycle.Lifecycle$State;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class z0 {

    /* renamed from: a  reason: collision with root package name */
    public final C0190a0 f3541a;

    /* renamed from: b  reason: collision with root package name */
    public final A0 f3542b;

    /* renamed from: c  reason: collision with root package name */
    public final K f3543c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f3544d = false;

    /* renamed from: e  reason: collision with root package name */
    public int f3545e = -1;

    public z0(C0190a0 c0190a0, A0 a02, K k4) {
        this.f3541a = c0190a0;
        this.f3542b = a02;
        this.f3543c = k4;
    }

    public final void a() {
        boolean H3 = AbstractC0220p0.H(3);
        K k4 = this.f3543c;
        if (H3) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + k4);
        }
        Bundle bundle = k4.mSavedFragmentState;
        k4.performActivityCreated(bundle != null ? bundle.getBundle("savedInstanceState") : null);
        this.f3541a.a(false);
    }

    public final void b() {
        K k4;
        int i4;
        View view;
        View view2;
        K k5 = this.f3543c;
        View view3 = k5.mContainer;
        while (true) {
            k4 = null;
            if (view3 == null) {
                break;
            }
            Object tag = view3.getTag(R.id.fragment_container_view_tag);
            K k6 = tag instanceof K ? (K) tag : null;
            if (k6 != null) {
                k4 = k6;
                break;
            } else {
                ViewParent parent = view3.getParent();
                view3 = parent instanceof View ? (View) parent : null;
            }
        }
        K parentFragment = k5.getParentFragment();
        if (k4 != null && !k4.equals(parentFragment)) {
            int i5 = k5.mContainerId;
            T.b bVar = T.c.f1688a;
            WrongNestedHierarchyViolation wrongNestedHierarchyViolation = new WrongNestedHierarchyViolation(k5, k4, i5);
            T.c.c(wrongNestedHierarchyViolation);
            T.b a4 = T.c.a(k5);
            if (a4.f1686a.contains(FragmentStrictMode$Flag.DETECT_WRONG_NESTED_HIERARCHY) && T.c.e(a4, k5.getClass(), WrongNestedHierarchyViolation.class)) {
                T.c.b(a4, wrongNestedHierarchyViolation);
            }
        }
        A0 a02 = this.f3542b;
        a02.getClass();
        ViewGroup viewGroup = k5.mContainer;
        if (viewGroup != null) {
            ArrayList arrayList = a02.f3230a;
            int indexOf = arrayList.indexOf(k5);
            int i6 = indexOf - 1;
            while (true) {
                if (i6 < 0) {
                    while (true) {
                        indexOf++;
                        if (indexOf >= arrayList.size()) {
                            break;
                        }
                        K k7 = (K) arrayList.get(indexOf);
                        if (k7.mContainer == viewGroup && (view = k7.mView) != null) {
                            i4 = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    K k8 = (K) arrayList.get(i6);
                    if (k8.mContainer == viewGroup && (view2 = k8.mView) != null) {
                        i4 = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i6--;
                }
            }
        }
        i4 = -1;
        k5.mContainer.addView(k5.mView, i4);
    }

    public final void c() {
        boolean H3 = AbstractC0220p0.H(3);
        K k4 = this.f3543c;
        if (H3) {
            Log.d("FragmentManager", "moveto ATTACHED: " + k4);
        }
        K k5 = k4.mTarget;
        z0 z0Var = null;
        A0 a02 = this.f3542b;
        if (k5 != null) {
            z0 z0Var2 = (z0) a02.f3231b.get(k5.mWho);
            if (z0Var2 == null) {
                throw new IllegalStateException("Fragment " + k4 + " declared target fragment " + k4.mTarget + " that does not belong to this FragmentManager!");
            }
            k4.mTargetWho = k4.mTarget.mWho;
            k4.mTarget = null;
            z0Var = z0Var2;
        } else {
            String str = k4.mTargetWho;
            if (str != null && (z0Var = (z0) a02.f3231b.get(str)) == null) {
                throw new IllegalStateException("Fragment " + k4 + " declared target fragment " + k4.mTargetWho + " that does not belong to this FragmentManager!");
            }
        }
        if (z0Var != null) {
            z0Var.k();
        }
        AbstractC0220p0 abstractC0220p0 = k4.mFragmentManager;
        k4.mHost = abstractC0220p0.f3484u;
        k4.mParentFragment = abstractC0220p0.f3486w;
        C0190a0 c0190a0 = this.f3541a;
        c0190a0.g(false);
        k4.performAttach();
        c0190a0.b(false);
    }

    public final int d() {
        Object obj;
        boolean z4;
        K k4 = this.f3543c;
        if (k4.mFragmentManager == null) {
            return k4.mState;
        }
        int i4 = this.f3545e;
        int ordinal = k4.mMaxState.ordinal();
        if (ordinal == 1) {
            i4 = Math.min(i4, 0);
        } else if (ordinal == 2) {
            i4 = Math.min(i4, 1);
        } else if (ordinal == 3) {
            i4 = Math.min(i4, 5);
        } else if (ordinal != 4) {
            i4 = Math.min(i4, -1);
        }
        if (k4.mFromLayout) {
            if (k4.mInLayout) {
                i4 = Math.max(this.f3545e, 2);
                View view = k4.mView;
                if (view != null && view.getParent() == null) {
                    i4 = Math.min(i4, 2);
                }
            } else {
                i4 = this.f3545e < 4 ? Math.min(i4, k4.mState) : Math.min(i4, 1);
            }
        }
        if (!k4.mAdded) {
            i4 = Math.min(i4, 1);
        }
        ViewGroup viewGroup = k4.mContainer;
        if (viewGroup != null) {
            U0 j4 = U0.j(viewGroup, k4.getParentFragmentManager());
            j4.getClass();
            kotlin.jvm.internal.h.d(k4, "fragmentStateManager.fragment");
            S0 h4 = j4.h(k4);
            SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact = h4 != null ? h4.f3333b : null;
            Iterator it = ((ArrayList) j4.f3351c).iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                S0 s02 = (S0) obj;
                if (!kotlin.jvm.internal.h.a(s02.f3334c, k4) || s02.f3337f) {
                    z4 = false;
                    continue;
                } else {
                    z4 = true;
                    continue;
                }
                if (z4) {
                    break;
                }
            }
            S0 s03 = (S0) obj;
            r2 = s03 != null ? s03.f3333b : null;
            int i5 = specialEffectsController$Operation$LifecycleImpact == null ? -1 : T0.f3348a[specialEffectsController$Operation$LifecycleImpact.ordinal()];
            if (i5 != -1 && i5 != 1) {
                r2 = specialEffectsController$Operation$LifecycleImpact;
            }
        }
        if (r2 == SpecialEffectsController$Operation$LifecycleImpact.ADDING) {
            i4 = Math.min(i4, 6);
        } else if (r2 == SpecialEffectsController$Operation$LifecycleImpact.REMOVING) {
            i4 = Math.max(i4, 3);
        } else if (k4.mRemoving) {
            i4 = k4.isInBackStack() ? Math.min(i4, 1) : Math.min(i4, -1);
        }
        if (k4.mDeferStart && k4.mState < 5) {
            i4 = Math.min(i4, 4);
        }
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + i4 + " for " + k4);
        }
        return i4;
    }

    public final void e() {
        boolean H3 = AbstractC0220p0.H(3);
        K k4 = this.f3543c;
        if (H3) {
            Log.d("FragmentManager", "moveto CREATED: " + k4);
        }
        Bundle bundle = k4.mSavedFragmentState;
        Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
        if (k4.mIsCreated) {
            k4.mState = 1;
            k4.restoreChildFragmentState();
            return;
        }
        C0190a0 c0190a0 = this.f3541a;
        c0190a0.h(false);
        k4.performCreate(bundle2);
        c0190a0.c(false);
    }

    public final void f() {
        String str;
        K k4 = this.f3543c;
        if (k4.mFromLayout) {
            return;
        }
        if (AbstractC0220p0.H(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + k4);
        }
        Bundle bundle = k4.mSavedFragmentState;
        ViewGroup viewGroup = null;
        Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
        LayoutInflater performGetLayoutInflater = k4.performGetLayoutInflater(bundle2);
        ViewGroup viewGroup2 = k4.mContainer;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i4 = k4.mContainerId;
            if (i4 != 0) {
                if (i4 == -1) {
                    throw new IllegalArgumentException(B.a("Cannot create fragment ", k4, " for a container view with no id"));
                }
                viewGroup = (ViewGroup) k4.mFragmentManager.f3485v.b(i4);
                if (viewGroup == null) {
                    if (!k4.mRestored) {
                        try {
                            str = k4.getResources().getResourceName(k4.mContainerId);
                        } catch (Resources.NotFoundException unused) {
                            str = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(k4.mContainerId) + " (" + str + ") for fragment " + k4);
                    }
                } else if (!(viewGroup instanceof FragmentContainerView)) {
                    T.b bVar = T.c.f1688a;
                    WrongFragmentContainerViolation wrongFragmentContainerViolation = new WrongFragmentContainerViolation(k4, viewGroup);
                    T.c.c(wrongFragmentContainerViolation);
                    T.b a4 = T.c.a(k4);
                    if (a4.f1686a.contains(FragmentStrictMode$Flag.DETECT_WRONG_FRAGMENT_CONTAINER) && T.c.e(a4, k4.getClass(), WrongFragmentContainerViolation.class)) {
                        T.c.b(a4, wrongFragmentContainerViolation);
                    }
                }
            }
        }
        k4.mContainer = viewGroup;
        k4.performCreateView(performGetLayoutInflater, viewGroup, bundle2);
        View view = k4.mView;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            k4.mView.setTag(R.id.fragment_container_view_tag, k4);
            if (viewGroup != null) {
                b();
            }
            if (k4.mHidden) {
                k4.mView.setVisibility(8);
            }
            View view2 = k4.mView;
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            if (androidx.core.view.A.b(view2)) {
                androidx.core.view.B.c(k4.mView);
            } else {
                View view3 = k4.mView;
                view3.addOnAttachStateChangeListener(new y0(view3));
            }
            k4.performViewCreated();
            this.f3541a.m(false);
            int visibility = k4.mView.getVisibility();
            k4.setPostOnViewCreatedAlpha(k4.mView.getAlpha());
            if (k4.mContainer != null && visibility == 0) {
                View findFocus = k4.mView.findFocus();
                if (findFocus != null) {
                    k4.setFocusedView(findFocus);
                    if (AbstractC0220p0.H(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + k4);
                    }
                }
                k4.mView.setAlpha(0.0f);
            }
        }
        k4.mState = 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g() {
        /*
            r9 = this;
            r0 = 3
            boolean r0 = androidx.fragment.app.AbstractC0220p0.H(r0)
            androidx.fragment.app.K r1 = r9.f3543c
            if (r0 == 0) goto L1c
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "movefrom CREATED: "
            r0.<init>(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r2 = "FragmentManager"
            android.util.Log.d(r2, r0)
        L1c:
            boolean r0 = r1.mRemoving
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L2a
            boolean r0 = r1.isInBackStack()
            if (r0 != 0) goto L2a
            r0 = r2
            goto L2b
        L2a:
            r0 = r3
        L2b:
            r4 = 0
            androidx.fragment.app.A0 r5 = r9.f3542b
            if (r0 == 0) goto L39
            boolean r6 = r1.mBeingSaved
            if (r6 != 0) goto L39
            java.lang.String r6 = r1.mWho
            r5.i(r6, r4)
        L39:
            if (r0 != 0) goto L54
            androidx.fragment.app.u0 r6 = r5.f3233d
            java.util.HashMap r7 = r6.f3513d
            java.lang.String r8 = r1.mWho
            boolean r7 = r7.containsKey(r8)
            if (r7 != 0) goto L49
        L47:
            r6 = r2
            goto L4f
        L49:
            boolean r7 = r6.f3516g
            if (r7 == 0) goto L47
            boolean r6 = r6.f3517h
        L4f:
            if (r6 == 0) goto L52
            goto L54
        L52:
            r6 = r3
            goto L55
        L54:
            r6 = r2
        L55:
            if (r6 == 0) goto Lbb
            androidx.fragment.app.W r6 = r1.mHost
            boolean r7 = r6 instanceof androidx.lifecycle.V
            if (r7 == 0) goto L62
            androidx.fragment.app.u0 r2 = r5.f3233d
            boolean r2 = r2.f3517h
            goto L6f
        L62:
            android.content.Context r6 = r6.f3356e
            boolean r7 = r6 instanceof android.app.Activity
            if (r7 == 0) goto L6f
            android.app.Activity r6 = (android.app.Activity) r6
            boolean r6 = r6.isChangingConfigurations()
            r2 = r2 ^ r6
        L6f:
            if (r0 == 0) goto L75
            boolean r0 = r1.mBeingSaved
            if (r0 == 0) goto L77
        L75:
            if (r2 == 0) goto L7c
        L77:
            androidx.fragment.app.u0 r0 = r5.f3233d
            r0.d(r1)
        L7c:
            r1.performDestroy()
            androidx.fragment.app.a0 r0 = r9.f3541a
            r0.d(r3)
            java.util.List r0 = r5.d()
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            java.util.Iterator r0 = r0.iterator()
        L8e:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto Lad
            java.lang.Object r2 = r0.next()
            androidx.fragment.app.z0 r2 = (androidx.fragment.app.z0) r2
            if (r2 == 0) goto L8e
            java.lang.String r3 = r1.mWho
            androidx.fragment.app.K r2 = r2.f3543c
            java.lang.String r6 = r2.mTargetWho
            boolean r3 = r3.equals(r6)
            if (r3 == 0) goto L8e
            r2.mTarget = r1
            r2.mTargetWho = r4
            goto L8e
        Lad:
            java.lang.String r0 = r1.mTargetWho
            if (r0 == 0) goto Lb7
            androidx.fragment.app.K r0 = r5.b(r0)
            r1.mTarget = r0
        Lb7:
            r5.h(r9)
            goto Lcd
        Lbb:
            java.lang.String r9 = r1.mTargetWho
            if (r9 == 0) goto Lcb
            androidx.fragment.app.K r9 = r5.b(r9)
            if (r9 == 0) goto Lcb
            boolean r0 = r9.mRetainInstance
            if (r0 == 0) goto Lcb
            r1.mTarget = r9
        Lcb:
            r1.mState = r3
        Lcd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.z0.g():void");
    }

    public final void h() {
        View view;
        boolean H3 = AbstractC0220p0.H(3);
        K k4 = this.f3543c;
        if (H3) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + k4);
        }
        ViewGroup viewGroup = k4.mContainer;
        if (viewGroup != null && (view = k4.mView) != null) {
            viewGroup.removeView(view);
        }
        k4.performDestroyView();
        this.f3541a.n(false);
        k4.mContainer = null;
        k4.mView = null;
        k4.mViewLifecycleOwner = null;
        k4.mViewLifecycleOwnerLiveData.h(null);
        k4.mInLayout = false;
    }

    public final void i() {
        boolean H3 = AbstractC0220p0.H(3);
        K k4 = this.f3543c;
        if (H3) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + k4);
        }
        k4.performDetach();
        boolean z4 = false;
        this.f3541a.e(false);
        k4.mState = -1;
        k4.mHost = null;
        k4.mParentFragment = null;
        k4.mFragmentManager = null;
        boolean z5 = true;
        if (k4.mRemoving && !k4.isInBackStack()) {
            z4 = true;
        }
        if (!z4) {
            C0229u0 c0229u0 = this.f3542b.f3233d;
            if (c0229u0.f3513d.containsKey(k4.mWho) && c0229u0.f3516g) {
                z5 = c0229u0.f3517h;
            }
            if (!z5) {
                return;
            }
        }
        if (AbstractC0220p0.H(3)) {
            Log.d("FragmentManager", "initState called for fragment: " + k4);
        }
        k4.initState();
    }

    public final void j() {
        K k4 = this.f3543c;
        if (k4.mFromLayout && k4.mInLayout && !k4.mPerformedCreateView) {
            if (AbstractC0220p0.H(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + k4);
            }
            Bundle bundle = k4.mSavedFragmentState;
            Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
            k4.performCreateView(k4.performGetLayoutInflater(bundle2), null, bundle2);
            View view = k4.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                k4.mView.setTag(R.id.fragment_container_view_tag, k4);
                if (k4.mHidden) {
                    k4.mView.setVisibility(8);
                }
                k4.performViewCreated();
                this.f3541a.m(false);
                k4.mState = 2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:142:0x017c, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k() {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.z0.k():void");
    }

    public final void l(ClassLoader classLoader) {
        K k4 = this.f3543c;
        Bundle bundle = k4.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        if (k4.mSavedFragmentState.getBundle("savedInstanceState") == null) {
            k4.mSavedFragmentState.putBundle("savedInstanceState", new Bundle());
        }
        k4.mSavedViewState = k4.mSavedFragmentState.getSparseParcelableArray("viewState");
        k4.mSavedViewRegistryState = k4.mSavedFragmentState.getBundle("viewRegistryState");
        x0 x0Var = (x0) k4.mSavedFragmentState.getParcelable("state");
        if (x0Var != null) {
            k4.mTargetWho = x0Var.f3534o;
            k4.mTargetRequestCode = x0Var.f3535p;
            Boolean bool = k4.mSavedUserVisibleHint;
            if (bool != null) {
                k4.mUserVisibleHint = bool.booleanValue();
                k4.mSavedUserVisibleHint = null;
            } else {
                k4.mUserVisibleHint = x0Var.f3536q;
            }
        }
        if (k4.mUserVisibleHint) {
            return;
        }
        k4.mDeferStart = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m() {
        /*
            r7 = this;
            r0 = 3
            boolean r0 = androidx.fragment.app.AbstractC0220p0.H(r0)
            java.lang.String r1 = "FragmentManager"
            androidx.fragment.app.K r2 = r7.f3543c
            if (r0 == 0) goto L1c
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r3 = "moveto RESUMED: "
            r0.<init>(r3)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            android.util.Log.d(r1, r0)
        L1c:
            android.view.View r0 = r2.getFocusedView()
            r3 = 0
            if (r0 == 0) goto L7d
            android.view.View r4 = r2.mView
            if (r0 != r4) goto L28
            goto L32
        L28:
            android.view.ViewParent r4 = r0.getParent()
        L2c:
            if (r4 == 0) goto L39
            android.view.View r5 = r2.mView
            if (r4 != r5) goto L34
        L32:
            r4 = 1
            goto L3a
        L34:
            android.view.ViewParent r4 = r4.getParent()
            goto L2c
        L39:
            r4 = r3
        L3a:
            if (r4 == 0) goto L7d
            boolean r4 = r0.requestFocus()
            r5 = 2
            boolean r5 = androidx.fragment.app.AbstractC0220p0.H(r5)
            if (r5 == 0) goto L7d
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "requestFocus: Restoring focused view "
            r5.<init>(r6)
            r5.append(r0)
            java.lang.String r0 = " "
            r5.append(r0)
            if (r4 == 0) goto L5b
            java.lang.String r0 = "succeeded"
            goto L5d
        L5b:
            java.lang.String r0 = "failed"
        L5d:
            r5.append(r0)
            java.lang.String r0 = " on Fragment "
            r5.append(r0)
            r5.append(r2)
            java.lang.String r0 = " resulting in focused view "
            r5.append(r0)
            android.view.View r0 = r2.mView
            android.view.View r0 = r0.findFocus()
            r5.append(r0)
            java.lang.String r0 = r5.toString()
            android.util.Log.v(r1, r0)
        L7d:
            r0 = 0
            r2.setFocusedView(r0)
            r2.performResume()
            androidx.fragment.app.a0 r7 = r7.f3541a
            r7.i(r3)
            r2.mSavedFragmentState = r0
            r2.mSavedViewState = r0
            r2.mSavedViewRegistryState = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.z0.m():void");
    }

    public final Bundle n() {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        K k4 = this.f3543c;
        if (k4.mState == -1 && (bundle = k4.mSavedFragmentState) != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putParcelable("state", new x0(k4));
        if (k4.mState > -1) {
            Bundle bundle3 = new Bundle();
            k4.performSaveInstanceState(bundle3);
            if (!bundle3.isEmpty()) {
                bundle2.putBundle("savedInstanceState", bundle3);
            }
            this.f3541a.j(false);
            Bundle bundle4 = new Bundle();
            k4.mSavedStateRegistryController.c(bundle4);
            if (!bundle4.isEmpty()) {
                bundle2.putBundle("registryState", bundle4);
            }
            Bundle U3 = k4.mChildFragmentManager.U();
            if (!U3.isEmpty()) {
                bundle2.putBundle("childFragmentManager", U3);
            }
            if (k4.mView != null) {
                o();
            }
            SparseArray<? extends Parcelable> sparseArray = k4.mSavedViewState;
            if (sparseArray != null) {
                bundle2.putSparseParcelableArray("viewState", sparseArray);
            }
            Bundle bundle5 = k4.mSavedViewRegistryState;
            if (bundle5 != null) {
                bundle2.putBundle("viewRegistryState", bundle5);
            }
        }
        Bundle bundle6 = k4.mArguments;
        if (bundle6 != null) {
            bundle2.putBundle("arguments", bundle6);
        }
        return bundle2;
    }

    public final void o() {
        K k4 = this.f3543c;
        if (k4.mView == null) {
            return;
        }
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + k4 + " with view " + k4.mView);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        k4.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            k4.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        k4.mViewLifecycleOwner.f3301h.c(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        k4.mSavedViewRegistryState = bundle;
    }

    public z0(C0190a0 c0190a0, A0 a02, ClassLoader classLoader, C0204h0 c0204h0, Bundle bundle) {
        this.f3541a = c0190a0;
        this.f3542b = a02;
        x0 x0Var = (x0) bundle.getParcelable("state");
        K a4 = c0204h0.a(x0Var.f3523d);
        a4.mWho = x0Var.f3524e;
        a4.mFromLayout = x0Var.f3525f;
        a4.mRestored = true;
        a4.mFragmentId = x0Var.f3526g;
        a4.mContainerId = x0Var.f3527h;
        a4.mTag = x0Var.f3528i;
        a4.mRetainInstance = x0Var.f3529j;
        a4.mRemoving = x0Var.f3530k;
        a4.mDetached = x0Var.f3531l;
        a4.mHidden = x0Var.f3532m;
        a4.mMaxState = Lifecycle$State.values()[x0Var.f3533n];
        a4.mTargetWho = x0Var.f3534o;
        a4.mTargetRequestCode = x0Var.f3535p;
        a4.mUserVisibleHint = x0Var.f3536q;
        this.f3543c = a4;
        a4.mSavedFragmentState = bundle;
        Bundle bundle2 = bundle.getBundle("arguments");
        if (bundle2 != null) {
            bundle2.setClassLoader(classLoader);
        }
        a4.setArguments(bundle2);
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + a4);
        }
    }

    public z0(C0190a0 c0190a0, A0 a02, K k4, Bundle bundle) {
        this.f3541a = c0190a0;
        this.f3542b = a02;
        this.f3543c = k4;
        k4.mSavedViewState = null;
        k4.mSavedViewRegistryState = null;
        k4.mBackStackNesting = 0;
        k4.mInLayout = false;
        k4.mAdded = false;
        K k5 = k4.mTarget;
        k4.mTargetWho = k5 != null ? k5.mWho : null;
        k4.mTarget = null;
        k4.mSavedFragmentState = bundle;
        k4.mArguments = bundle.getBundle("arguments");
    }
}
