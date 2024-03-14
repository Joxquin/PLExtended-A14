package androidx.preference;

import D.o;
import X.A;
import X.B;
import X.C;
import X.D;
import X.E;
import X.HandlerC0102z;
import X.InterfaceC0079b;
import X.U;
import X.V;
import X.W;
import X.X;
import X.Z;
import X.b0;
import android.app.DialogFragment;
import android.app.Fragment;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.shared.R;
@Deprecated
/* loaded from: classes.dex */
public abstract class PreferenceFragment extends Fragment implements W, U, V, InterfaceC0079b {

    /* renamed from: e  reason: collision with root package name */
    public X f3694e;

    /* renamed from: f  reason: collision with root package name */
    public RecyclerView f3695f;

    /* renamed from: g  reason: collision with root package name */
    public Context f3696g;

    /* renamed from: d  reason: collision with root package name */
    public final B f3693d = new B(this);

    /* renamed from: h  reason: collision with root package name */
    public int f3697h = R.layout.preference_list_fragment;

    /* renamed from: i  reason: collision with root package name */
    public final HandlerC0102z f3698i = new HandlerC0102z(this);

    /* renamed from: j  reason: collision with root package name */
    public final A f3699j = new A(this);

    @Deprecated
    public abstract void a(String str, Bundle bundle);

    @Override // X.InterfaceC0079b
    @Deprecated
    public final Preference findPreference(CharSequence charSequence) {
        PreferenceScreen preferenceScreen;
        X x4 = this.f3694e;
        if (x4 == null || (preferenceScreen = x4.f1971g) == null) {
            return null;
        }
        return preferenceScreen.c(charSequence);
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        getActivity().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        int i4 = typedValue.resourceId;
        if (i4 == 0) {
            i4 = R.style.PreferenceThemeOverlay;
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getActivity(), i4);
        this.f3696g = contextThemeWrapper;
        X x4 = new X(contextThemeWrapper);
        this.f3694e = x4;
        x4.f1974j = this;
        a(getArguments() != null ? getArguments().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT") : null, bundle);
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RecyclerView recyclerView;
        Context context = this.f3696g;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, b0.f1992h, o.a(context, R.attr.preferenceFragmentStyle, 16844038), 0);
        this.f3697h = obtainStyledAttributes.getResourceId(0, this.f3697h);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, -1);
        boolean z4 = obtainStyledAttributes.getBoolean(3, true);
        obtainStyledAttributes.recycle();
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(this.f3696g);
        View inflate = cloneInContext.inflate(this.f3697h, viewGroup, false);
        View findViewById = inflate.findViewById(16908351);
        if (findViewById instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) findViewById;
            if (!this.f3696g.getPackageManager().hasSystemFeature("android.hardware.type.automotive") || (recyclerView = (RecyclerView) viewGroup2.findViewById(R.id.recycler_view)) == null) {
                recyclerView = (RecyclerView) cloneInContext.inflate(R.layout.preference_recyclerview, viewGroup2, false);
                getActivity();
                recyclerView.setLayoutManager(new LinearLayoutManager(1));
                recyclerView.setAccessibilityDelegateCompat(new Z(recyclerView));
            }
            this.f3695f = recyclerView;
            recyclerView.addItemDecoration(this.f3693d);
            B b4 = this.f3693d;
            if (drawable != null) {
                b4.getClass();
                b4.f1937e = drawable.getIntrinsicHeight();
            } else {
                b4.f1937e = 0;
            }
            b4.f1936d = drawable;
            b4.f1939g.f3695f.invalidateItemDecorations();
            if (dimensionPixelSize != -1) {
                B b5 = this.f3693d;
                b5.f1937e = dimensionPixelSize;
                b5.f1939g.f3695f.invalidateItemDecorations();
            }
            this.f3693d.f1938f = z4;
            if (this.f3695f.getParent() == null) {
                viewGroup2.addView(this.f3695f);
            }
            this.f3698i.post(this.f3699j);
            return inflate;
        }
        throw new RuntimeException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
    }

    @Override // android.app.Fragment
    public final void onDestroyView() {
        this.f3698i.removeCallbacks(this.f3699j);
        this.f3698i.removeMessages(1);
        this.f3695f = null;
        super.onDestroyView();
    }

    @Override // X.U
    @Deprecated
    public final void onDisplayPreferenceDialog(Preference preference) {
        DialogFragment multiSelectListPreferenceDialogFragment;
        if (!(getActivity() instanceof C ? ((C) getActivity()).a() : false) && getFragmentManager().findFragmentByTag("androidx.preference.PreferenceFragment.DIALOG") == null) {
            if (preference instanceof EditTextPreference) {
                String key = preference.getKey();
                multiSelectListPreferenceDialogFragment = new EditTextPreferenceDialogFragment();
                Bundle bundle = new Bundle(1);
                bundle.putString("key", key);
                multiSelectListPreferenceDialogFragment.setArguments(bundle);
            } else if (preference instanceof ListPreference) {
                String key2 = preference.getKey();
                multiSelectListPreferenceDialogFragment = new ListPreferenceDialogFragment();
                Bundle bundle2 = new Bundle(1);
                bundle2.putString("key", key2);
                multiSelectListPreferenceDialogFragment.setArguments(bundle2);
            } else if (!(preference instanceof MultiSelectListPreference)) {
                throw new IllegalArgumentException("Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?");
            } else {
                String key3 = preference.getKey();
                multiSelectListPreferenceDialogFragment = new MultiSelectListPreferenceDialogFragment();
                Bundle bundle3 = new Bundle(1);
                bundle3.putString("key", key3);
                multiSelectListPreferenceDialogFragment.setArguments(bundle3);
            }
            multiSelectListPreferenceDialogFragment.setTargetFragment(this, 0);
            multiSelectListPreferenceDialogFragment.show(getFragmentManager(), "androidx.preference.PreferenceFragment.DIALOG");
        }
    }

    @Override // X.V
    @Deprecated
    public final void onNavigateToScreen(PreferenceScreen preferenceScreen) {
        if (getActivity() instanceof E) {
            ((E) getActivity()).a();
        }
    }

    @Override // X.W
    @Deprecated
    public final boolean onPreferenceTreeClick(Preference preference) {
        if (preference.getFragment() == null || !(getActivity() instanceof D)) {
            return false;
        }
        return ((D) getActivity()).a();
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PreferenceScreen preferenceScreen = this.f3694e.f1971g;
        if (preferenceScreen != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreen.dispatchSaveInstanceState(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        X x4 = this.f3694e;
        x4.f1972h = this;
        x4.f1973i = this;
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        X x4 = this.f3694e;
        x4.f1972h = null;
        x4.f1973i = null;
    }

    @Override // android.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen preferenceScreen;
        super.onViewCreated(view, bundle);
        if (bundle == null || (bundle2 = bundle.getBundle("android:preferences")) == null || (preferenceScreen = this.f3694e.f1971g) == null) {
            return;
        }
        preferenceScreen.dispatchRestoreInstanceState(bundle2);
    }
}
