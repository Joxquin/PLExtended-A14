package androidx.fragment.app;

import a0.C0155h;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.android.systemui.shared.R;
import j.C1080K;
/* loaded from: classes.dex */
public class DialogFragment extends K implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    private int mBackStackId;
    private boolean mCancelable;
    private boolean mCreatingDialog;
    private Dialog mDialog;
    private boolean mDialogCreated;
    private r mDismissRunnable;
    private boolean mDismissed;
    private Handler mHandler;
    private C0228u mObserver;
    private DialogInterface$OnCancelListenerC0224s mOnCancelListener;
    private DialogInterface$OnDismissListenerC0226t mOnDismissListener;
    private boolean mShownByMe;
    private boolean mShowsDialog;
    private int mStyle;
    private int mTheme;
    private boolean mViewDestroyed;

    public DialogFragment() {
        this.mDismissRunnable = new r(this);
        this.mOnCancelListener = new DialogInterface$OnCancelListenerC0224s(this);
        this.mOnDismissListener = new DialogInterface$OnDismissListenerC0226t(this);
        this.mStyle = 0;
        this.mTheme = 0;
        this.mCancelable = true;
        this.mShowsDialog = true;
        this.mBackStackId = -1;
        this.mObserver = new C0228u(this);
        this.mDialogCreated = false;
    }

    public static /* synthetic */ Dialog access$000(DialogFragment dialogFragment) {
        return dialogFragment.mDialog;
    }

    public static /* synthetic */ boolean access$200(DialogFragment dialogFragment) {
        return dialogFragment.mShowsDialog;
    }

    private void dismissInternal(boolean z4, boolean z5) {
        if (this.mDismissed) {
            return;
        }
        this.mDismissed = true;
        this.mShownByMe = false;
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.mDialog.dismiss();
            if (!z5) {
                if (Looper.myLooper() == this.mHandler.getLooper()) {
                    onDismiss(this.mDialog);
                } else {
                    this.mHandler.post(this.mDismissRunnable);
                }
            }
        }
        this.mViewDestroyed = true;
        if (this.mBackStackId >= 0) {
            AbstractC0220p0 parentFragmentManager = getParentFragmentManager();
            int i4 = this.mBackStackId;
            parentFragmentManager.getClass();
            if (i4 < 0) {
                throw new IllegalArgumentException(C1080K.a("Bad id: ", i4));
            }
            parentFragmentManager.v(new C0218o0(parentFragmentManager, i4), z4);
            this.mBackStackId = -1;
            return;
        }
        AbstractC0220p0 parentFragmentManager2 = getParentFragmentManager();
        parentFragmentManager2.getClass();
        C0189a c0189a = new C0189a(parentFragmentManager2);
        c0189a.f3377p = true;
        AbstractC0220p0 abstractC0220p0 = this.mFragmentManager;
        if (abstractC0220p0 != null && abstractC0220p0 != c0189a.f3379r) {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + toString() + " is already attached to a FragmentManager.");
        }
        c0189a.b(new B0(this, 3));
        if (z4) {
            c0189a.d(true);
        } else {
            c0189a.d(false);
        }
    }

    @Override // androidx.fragment.app.K
    public final U createFragmentContainer() {
        return new C0230v(this, super.createFragmentContainer());
    }

    public final void dismiss() {
        dismissInternal(false, false);
    }

    public final int getTheme() {
        return this.mTheme;
    }

    public final boolean isCancelable() {
        return this.mCancelable;
    }

    @Override // androidx.fragment.app.K
    @Deprecated
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // androidx.fragment.app.K
    public final void onAttach(Context context) {
        super.onAttach(context);
        getViewLifecycleOwnerLiveData().d(this.mObserver);
        if (this.mShownByMe) {
            return;
        }
        this.mDismissed = false;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // androidx.fragment.app.K
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mHandler = new Handler();
        this.mShowsDialog = this.mContainerId == 0;
        if (bundle != null) {
            this.mStyle = bundle.getInt("android:style", 0);
            this.mTheme = bundle.getInt("android:theme", 0);
            this.mCancelable = bundle.getBoolean("android:cancelable", true);
            this.mShowsDialog = bundle.getBoolean("android:showsDialog", this.mShowsDialog);
            this.mBackStackId = bundle.getInt("android:backStackId", -1);
        }
    }

    public Dialog onCreateDialog() {
        if (AbstractC0220p0.H(3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new androidx.activity.n(this.mTheme, requireContext());
    }

    @Override // androidx.fragment.app.K
    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            this.mViewDestroyed = true;
            dialog.setOnDismissListener(null);
            this.mDialog.dismiss();
            if (!this.mDismissed) {
                onDismiss(this.mDialog);
            }
            this.mDialog = null;
            this.mDialogCreated = false;
        }
    }

    @Override // androidx.fragment.app.K
    public final void onDetach() {
        super.onDetach();
        if (!this.mShownByMe && !this.mDismissed) {
            this.mDismissed = true;
        }
        getViewLifecycleOwnerLiveData().g(this.mObserver);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.mViewDestroyed) {
            return;
        }
        if (AbstractC0220p0.H(3)) {
            Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
        }
        dismissInternal(true, true);
    }

    public final View onFindViewById(int i4) {
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            return dialog.findViewById(i4);
        }
        return null;
    }

    @Override // androidx.fragment.app.K
    public final LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        boolean z4 = this.mShowsDialog;
        if (!z4 || this.mCreatingDialog) {
            if (AbstractC0220p0.H(2)) {
                String str = "getting layout inflater for DialogFragment " + this;
                if (this.mShowsDialog) {
                    Log.d("FragmentManager", "mCreatingDialog = true: " + str);
                } else {
                    Log.d("FragmentManager", "mShowsDialog = false: " + str);
                }
            }
            return onGetLayoutInflater;
        }
        if (z4 && !this.mDialogCreated) {
            try {
                this.mCreatingDialog = true;
                Dialog onCreateDialog = onCreateDialog();
                this.mDialog = onCreateDialog;
                if (this.mShowsDialog) {
                    setupDialog(onCreateDialog, this.mStyle);
                    Context context = getContext();
                    if (context instanceof Activity) {
                        this.mDialog.setOwnerActivity((Activity) context);
                    }
                    this.mDialog.setCancelable(this.mCancelable);
                    this.mDialog.setOnCancelListener(this.mOnCancelListener);
                    this.mDialog.setOnDismissListener(this.mOnDismissListener);
                    this.mDialogCreated = true;
                } else {
                    this.mDialog = null;
                }
            } finally {
                this.mCreatingDialog = false;
            }
        }
        if (AbstractC0220p0.H(2)) {
            Log.d("FragmentManager", "get layout inflater for DialogFragment " + this + " from dialog context");
        }
        Dialog dialog = this.mDialog;
        return dialog != null ? onGetLayoutInflater.cloneInContext(dialog.getContext()) : onGetLayoutInflater;
    }

    public final boolean onHasView() {
        return this.mDialogCreated;
    }

    @Override // androidx.fragment.app.K
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            Bundle onSaveInstanceState = dialog.onSaveInstanceState();
            onSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i4 = this.mStyle;
        if (i4 != 0) {
            bundle.putInt("android:style", i4);
        }
        int i5 = this.mTheme;
        if (i5 != 0) {
            bundle.putInt("android:theme", i5);
        }
        boolean z4 = this.mCancelable;
        if (!z4) {
            bundle.putBoolean("android:cancelable", z4);
        }
        boolean z5 = this.mShowsDialog;
        if (!z5) {
            bundle.putBoolean("android:showsDialog", z5);
        }
        int i6 = this.mBackStackId;
        if (i6 != -1) {
            bundle.putInt("android:backStackId", i6);
        }
    }

    @Override // androidx.fragment.app.K
    public void onStart() {
        super.onStart();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            this.mViewDestroyed = false;
            dialog.show();
            View decorView = this.mDialog.getWindow().getDecorView();
            androidx.lifecycle.W.b(decorView, this);
            decorView.setTag(R.id.view_tree_view_model_store_owner, this);
            C0155h.a(decorView, this);
        }
    }

    @Override // androidx.fragment.app.K
    public void onStop() {
        super.onStop();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.K
    public final void onViewStateRestored(Bundle bundle) {
        Bundle bundle2;
        super.onViewStateRestored(bundle);
        if (this.mDialog == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.mDialog.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.K
    public final void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.performCreateView(layoutInflater, viewGroup, bundle);
        if (this.mView != null || this.mDialog == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.mDialog.onRestoreInstanceState(bundle2);
    }

    public final Dialog requireDialog() {
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            return dialog;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }

    public void setupDialog(Dialog dialog, int i4) {
        if (i4 != 1 && i4 != 2) {
            if (i4 != 3) {
                return;
            }
            Window window = dialog.getWindow();
            if (window != null) {
                window.addFlags(24);
            }
        }
        dialog.requestWindowFeature(1);
    }

    public final void show(AbstractC0220p0 abstractC0220p0, String str) {
        this.mDismissed = false;
        this.mShownByMe = true;
        abstractC0220p0.getClass();
        C0189a c0189a = new C0189a(abstractC0220p0);
        c0189a.f3377p = true;
        c0189a.e(0, this, str, 1);
        c0189a.d(false);
    }

    public DialogFragment(int i4) {
        super(i4);
        this.mDismissRunnable = new r(this);
        this.mOnCancelListener = new DialogInterface$OnCancelListenerC0224s(this);
        this.mOnDismissListener = new DialogInterface$OnDismissListenerC0226t(this);
        this.mStyle = 0;
        this.mTheme = 0;
        this.mCancelable = true;
        this.mShowsDialog = true;
        this.mBackStackId = -1;
        this.mObserver = new C0228u(this);
        this.mDialogCreated = false;
    }
}
