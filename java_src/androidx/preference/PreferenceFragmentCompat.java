package androidx.preference;

import E.c;
import X.F;
import X.G;
import X.H;
import X.I;
import X.InterfaceC0079b;
import X.J;
import X.S;
import X.T;
import X.U;
import X.V;
import X.W;
import X.X;
import X.Z;
import X.b0;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.AbstractC0220p0;
import androidx.fragment.app.C0189a;
import androidx.fragment.app.C0204h0;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.K;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public abstract class PreferenceFragmentCompat extends K implements W, U, V, InterfaceC0079b {
    private boolean mHavePrefs;
    private boolean mInitDone;
    RecyclerView mList;
    private X mPreferenceManager;
    private final G mDividerDecoration = new G(this);
    private int mLayoutResId = R.layout.preference_list_fragment;
    private F mHandler = new F(this);
    private final a mRequestFocus = new a(this);

    public final void bindPreferences() {
        PreferenceScreen preferenceScreen = this.mPreferenceManager.f1971g;
        if (preferenceScreen != null) {
            this.mList.setAdapter(new S(preferenceScreen));
            preferenceScreen.onAttached();
        }
    }

    @Override // X.InterfaceC0079b
    public final Preference findPreference(CharSequence charSequence) {
        PreferenceScreen preferenceScreen;
        X x4 = this.mPreferenceManager;
        if (x4 == null || (preferenceScreen = x4.f1971g) == null) {
            return null;
        }
        return preferenceScreen.c(charSequence);
    }

    public final RecyclerView getListView() {
        return this.mList;
    }

    public final X getPreferenceManager() {
        return this.mPreferenceManager;
    }

    public final PreferenceScreen getPreferenceScreen() {
        return this.mPreferenceManager.f1971g;
    }

    @Override // androidx.fragment.app.K
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        int i4 = typedValue.resourceId;
        if (i4 == 0) {
            i4 = R.style.PreferenceThemeOverlay;
        }
        getContext().getTheme().applyStyle(i4, false);
        X x4 = new X(getContext());
        this.mPreferenceManager = x4;
        x4.f1974j = this;
        onCreatePreferences(getArguments() != null ? getArguments().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT") : null, bundle);
    }

    public abstract void onCreatePreferences(String str, Bundle bundle);

    @Override // androidx.fragment.app.K
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RecyclerView recyclerView;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, b0.f1993i, R.attr.preferenceFragmentCompatStyle, 0);
        this.mLayoutResId = obtainStyledAttributes.getResourceId(0, this.mLayoutResId);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, -1);
        boolean z4 = obtainStyledAttributes.getBoolean(3, true);
        obtainStyledAttributes.recycle();
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(getContext());
        View inflate = cloneInContext.inflate(this.mLayoutResId, viewGroup, false);
        View findViewById = inflate.findViewById(16908351);
        if (findViewById instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) findViewById;
            if (!getContext().getPackageManager().hasSystemFeature("android.hardware.type.automotive") || (recyclerView = (RecyclerView) viewGroup2.findViewById(R.id.recycler_view)) == null) {
                recyclerView = (RecyclerView) cloneInContext.inflate(R.layout.preference_recyclerview, viewGroup2, false);
                getContext();
                recyclerView.setLayoutManager(new LinearLayoutManager(1));
                recyclerView.setAccessibilityDelegateCompat(new Z(recyclerView));
            }
            this.mList = recyclerView;
            recyclerView.addItemDecoration(this.mDividerDecoration);
            G g4 = this.mDividerDecoration;
            if (drawable != null) {
                g4.getClass();
                g4.f1942e = drawable.getIntrinsicHeight();
            } else {
                g4.f1942e = 0;
            }
            g4.f1941d = drawable;
            g4.f1944g.mList.invalidateItemDecorations();
            if (dimensionPixelSize != -1) {
                G g5 = this.mDividerDecoration;
                g5.f1942e = dimensionPixelSize;
                g5.f1944g.mList.invalidateItemDecorations();
            }
            this.mDividerDecoration.f1943f = z4;
            if (this.mList.getParent() == null) {
                viewGroup2.addView(this.mList);
            }
            this.mHandler.post(this.mRequestFocus);
            return inflate;
        }
        throw new IllegalStateException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
    }

    @Override // androidx.fragment.app.K
    public final void onDestroyView() {
        this.mHandler.removeCallbacks(this.mRequestFocus);
        this.mHandler.removeMessages(1);
        if (this.mHavePrefs) {
            this.mList.setAdapter(null);
            PreferenceScreen preferenceScreen = this.mPreferenceManager.f1971g;
            if (preferenceScreen != null) {
                preferenceScreen.onDetached();
            }
        }
        this.mList = null;
        super.onDestroyView();
    }

    @Override // X.U
    public final void onDisplayPreferenceDialog(Preference preference) {
        DialogFragment multiSelectListPreferenceDialogFragmentCompat;
        boolean a4 = getContext() instanceof H ? ((H) getContext()).a() : false;
        if (!a4 && (getActivity() instanceof H)) {
            a4 = ((H) getActivity()).a();
        }
        if (!a4 && getParentFragmentManager().C("androidx.preference.PreferenceFragment.DIALOG") == null) {
            if (preference instanceof EditTextPreference) {
                String key = preference.getKey();
                multiSelectListPreferenceDialogFragmentCompat = new EditTextPreferenceDialogFragmentCompat();
                Bundle bundle = new Bundle(1);
                bundle.putString("key", key);
                multiSelectListPreferenceDialogFragmentCompat.setArguments(bundle);
            } else if (preference instanceof ListPreference) {
                String key2 = preference.getKey();
                multiSelectListPreferenceDialogFragmentCompat = new ListPreferenceDialogFragmentCompat();
                Bundle bundle2 = new Bundle(1);
                bundle2.putString("key", key2);
                multiSelectListPreferenceDialogFragmentCompat.setArguments(bundle2);
            } else if (!(preference instanceof MultiSelectListPreference)) {
                throw new IllegalArgumentException("Cannot display dialog for an unknown Preference type: " + preference.getClass().getSimpleName() + ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.");
            } else {
                String key3 = preference.getKey();
                multiSelectListPreferenceDialogFragmentCompat = new MultiSelectListPreferenceDialogFragmentCompat();
                Bundle bundle3 = new Bundle(1);
                bundle3.putString("key", key3);
                multiSelectListPreferenceDialogFragmentCompat.setArguments(bundle3);
            }
            multiSelectListPreferenceDialogFragmentCompat.setTargetFragment(this, 0);
            multiSelectListPreferenceDialogFragmentCompat.show(getParentFragmentManager(), "androidx.preference.PreferenceFragment.DIALOG");
        }
    }

    @Override // X.V
    public final void onNavigateToScreen(PreferenceScreen preferenceScreen) {
        if ((getContext() instanceof J ? ((J) getContext()).onPreferenceStartScreen(preferenceScreen) : false) || !(getActivity() instanceof J)) {
            return;
        }
        ((J) getActivity()).onPreferenceStartScreen(preferenceScreen);
    }

    @Override // X.W
    public final boolean onPreferenceTreeClick(Preference preference) {
        if (preference.getFragment() != null) {
            boolean onPreferenceStartFragment = getContext() instanceof I ? ((I) getContext()).onPreferenceStartFragment(preference) : false;
            if (!onPreferenceStartFragment && (getActivity() instanceof I)) {
                onPreferenceStartFragment = ((I) getActivity()).onPreferenceStartFragment(preference);
            }
            if (!onPreferenceStartFragment) {
                Log.w("PreferenceFragment", "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments.");
                AbstractC0220p0 parentFragmentManager = getParentFragmentManager();
                Bundle extras = preference.getExtras();
                C0204h0 E3 = parentFragmentManager.E();
                requireActivity().getClassLoader();
                K a4 = E3.a(preference.getFragment());
                a4.setArguments(extras);
                a4.setTargetFragment(this, 0);
                C0189a c0189a = new C0189a(parentFragmentManager);
                c0189a.g(a4, ((View) getView().getParent()).getId());
                if (!c0189a.f3369h) {
                    throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
                }
                c0189a.f3368g = true;
                c0189a.f3370i = null;
                c0189a.d(false);
            }
            return true;
        }
        return false;
    }

    @Override // androidx.fragment.app.K
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PreferenceScreen preferenceScreen = this.mPreferenceManager.f1971g;
        if (preferenceScreen != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreen.dispatchSaveInstanceState(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // androidx.fragment.app.K
    public final void onStart() {
        super.onStart();
        X x4 = this.mPreferenceManager;
        x4.f1972h = this;
        x4.f1973i = this;
    }

    @Override // androidx.fragment.app.K
    public void onStop() {
        super.onStop();
        X x4 = this.mPreferenceManager;
        x4.f1972h = null;
        x4.f1973i = null;
    }

    @Override // androidx.fragment.app.K
    public void onViewCreated(View view, Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen preferenceScreen;
        super.onViewCreated(view, bundle);
        if (bundle != null && (bundle2 = bundle.getBundle("android:preferences")) != null && (preferenceScreen = this.mPreferenceManager.f1971g) != null) {
            preferenceScreen.dispatchRestoreInstanceState(bundle2);
        }
        if (this.mHavePrefs) {
            bindPreferences();
        }
        this.mInitDone = true;
    }

    public final void setPreferenceScreen(PreferenceScreen preferenceScreen) {
        boolean z4;
        X x4 = this.mPreferenceManager;
        PreferenceScreen preferenceScreen2 = x4.f1971g;
        if (preferenceScreen != preferenceScreen2) {
            if (preferenceScreen2 != null) {
                preferenceScreen2.onDetached();
            }
            x4.f1971g = preferenceScreen;
            z4 = true;
        } else {
            z4 = false;
        }
        if (!z4 || preferenceScreen == null) {
            return;
        }
        this.mHavePrefs = true;
        if (!this.mInitDone || this.mHandler.hasMessages(1)) {
            return;
        }
        this.mHandler.obtainMessage(1).sendToTarget();
    }

    public final void setPreferencesFromResource(String str) {
        X x4 = this.mPreferenceManager;
        if (x4 == null) {
            throw new RuntimeException("This should be called after super.onCreate.");
        }
        Context context = getContext();
        x4.f1969e = true;
        T t4 = new T(context, x4);
        XmlResourceParser xml = context.getResources().getXml(R.xml.launcher_preferences);
        try {
            PreferenceGroup c4 = t4.c(xml);
            xml.close();
            PreferenceScreen preferenceScreen = (PreferenceScreen) c4;
            preferenceScreen.onAttachedToHierarchy(x4);
            SharedPreferences.Editor editor = x4.f1968d;
            if (editor != null) {
                editor.apply();
            }
            x4.f1969e = false;
            PreferenceScreen preferenceScreen2 = preferenceScreen;
            if (str != null) {
                Preference c5 = preferenceScreen.c(str);
                boolean z4 = c5 instanceof PreferenceScreen;
                preferenceScreen2 = c5;
                if (!z4) {
                    throw new IllegalArgumentException(c.a("Preference object with key ", str, " is not a PreferenceScreen"));
                }
            }
            setPreferenceScreen((PreferenceScreen) preferenceScreen2);
        } catch (Throwable th) {
            xml.close();
            throw th;
        }
    }
}
