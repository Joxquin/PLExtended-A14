package androidx.preference;

import D.o;
import X.AbstractC0101y;
import X.InterfaceC0097u;
import X.InterfaceC0098v;
import X.InterfaceC0100x;
import X.O;
import X.S;
import X.View$OnCreateContextMenuListenerC0099w;
import X.W;
import X.X;
import X.b0;
import X.r;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.shared.R;
import f.C0832a;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public class Preference implements Comparable {
    private boolean mAllowDividerAbove;
    private boolean mAllowDividerBelow;
    private boolean mBaseMethodCalled;
    private final r mClickListener;
    private Context mContext;
    private boolean mCopyingEnabled;
    private Object mDefaultValue;
    private String mDependencyKey;
    private boolean mDependencyMet;
    private List mDependents;
    private boolean mEnabled;
    private Bundle mExtras;
    private String mFragment;
    private boolean mHasId;
    private boolean mHasSingleLineTitleAttr;
    private Drawable mIcon;
    private int mIconResId;
    private boolean mIconSpaceReserved;
    private long mId;
    private Intent mIntent;
    private String mKey;
    private int mLayoutResId;
    private S mListener;
    private InterfaceC0097u mOnChangeListener;
    private InterfaceC0098v mOnClickListener;
    private View$OnCreateContextMenuListenerC0099w mOnCopyListener;
    private int mOrder;
    private boolean mParentDependencyMet;
    private PreferenceGroup mParentGroup;
    private boolean mPersistent;
    private AbstractC0101y mPreferenceDataStore;
    private X mPreferenceManager;
    private boolean mRequiresKey;
    private boolean mSelectable;
    private boolean mShouldDisableView;
    private boolean mSingleLineTitle;
    private CharSequence mSummary;
    private InterfaceC0100x mSummaryProvider;
    private CharSequence mTitle;
    private boolean mVisible;
    private int mWidgetLayoutResId;

    public Preference(Context context, AttributeSet attributeSet, int i4, int i5) {
        this.mOrder = Integer.MAX_VALUE;
        this.mEnabled = true;
        this.mSelectable = true;
        this.mPersistent = true;
        this.mDependencyMet = true;
        this.mParentDependencyMet = true;
        this.mVisible = true;
        this.mAllowDividerAbove = true;
        this.mAllowDividerBelow = true;
        this.mSingleLineTitle = true;
        this.mShouldDisableView = true;
        this.mLayoutResId = R.layout.preference;
        this.mClickListener = new r(this);
        this.mContext = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b0.f1991g, i4, i5);
        this.mIconResId = obtainStyledAttributes.getResourceId(23, obtainStyledAttributes.getResourceId(0, 0));
        this.mKey = o.b(obtainStyledAttributes, 26, 6);
        CharSequence text = obtainStyledAttributes.getText(34);
        this.mTitle = text == null ? obtainStyledAttributes.getText(4) : text;
        CharSequence text2 = obtainStyledAttributes.getText(33);
        this.mSummary = text2 == null ? obtainStyledAttributes.getText(7) : text2;
        this.mOrder = obtainStyledAttributes.getInt(28, obtainStyledAttributes.getInt(8, Integer.MAX_VALUE));
        this.mFragment = o.b(obtainStyledAttributes, 22, 13);
        this.mLayoutResId = obtainStyledAttributes.getResourceId(27, obtainStyledAttributes.getResourceId(3, R.layout.preference));
        this.mWidgetLayoutResId = obtainStyledAttributes.getResourceId(35, obtainStyledAttributes.getResourceId(9, 0));
        this.mEnabled = obtainStyledAttributes.getBoolean(21, obtainStyledAttributes.getBoolean(2, true));
        this.mSelectable = obtainStyledAttributes.getBoolean(30, obtainStyledAttributes.getBoolean(5, true));
        this.mPersistent = obtainStyledAttributes.getBoolean(29, obtainStyledAttributes.getBoolean(1, true));
        this.mDependencyKey = o.b(obtainStyledAttributes, 19, 10);
        this.mAllowDividerAbove = obtainStyledAttributes.getBoolean(16, obtainStyledAttributes.getBoolean(16, this.mSelectable));
        this.mAllowDividerBelow = obtainStyledAttributes.getBoolean(17, obtainStyledAttributes.getBoolean(17, this.mSelectable));
        if (obtainStyledAttributes.hasValue(18)) {
            this.mDefaultValue = onGetDefaultValue(obtainStyledAttributes, 18);
        } else if (obtainStyledAttributes.hasValue(11)) {
            this.mDefaultValue = onGetDefaultValue(obtainStyledAttributes, 11);
        }
        this.mShouldDisableView = obtainStyledAttributes.getBoolean(31, obtainStyledAttributes.getBoolean(12, true));
        boolean hasValue = obtainStyledAttributes.hasValue(32);
        this.mHasSingleLineTitleAttr = hasValue;
        if (hasValue) {
            this.mSingleLineTitle = obtainStyledAttributes.getBoolean(32, obtainStyledAttributes.getBoolean(14, true));
        }
        this.mIconSpaceReserved = obtainStyledAttributes.getBoolean(24, obtainStyledAttributes.getBoolean(15, false));
        this.mVisible = obtainStyledAttributes.getBoolean(25, obtainStyledAttributes.getBoolean(25, true));
        this.mCopyingEnabled = obtainStyledAttributes.getBoolean(20, obtainStyledAttributes.getBoolean(20, false));
        obtainStyledAttributes.recycle();
    }

    private static void setEnabledStateOnViews(View view, boolean z4) {
        view.setEnabled(z4);
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                return;
            }
            setEnabledStateOnViews(viewGroup.getChildAt(childCount), z4);
        }
    }

    public final void assignParent(PreferenceGroup preferenceGroup) {
        if (preferenceGroup != null && this.mParentGroup != null) {
            throw new IllegalStateException("This preference already has a parent. You must remove the existing parent before assigning a new one.");
        }
        this.mParentGroup = preferenceGroup;
    }

    public final boolean callChangeListener(Object obj) {
        InterfaceC0097u interfaceC0097u = this.mOnChangeListener;
        if (interfaceC0097u != null) {
            interfaceC0097u.a(this, obj);
            return true;
        }
        return true;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        Preference preference = (Preference) obj;
        int i4 = this.mOrder;
        int i5 = preference.mOrder;
        if (i4 != i5) {
            return i4 - i5;
        }
        CharSequence charSequence = this.mTitle;
        CharSequence charSequence2 = preference.mTitle;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference.mTitle.toString());
    }

    public void dispatchRestoreInstanceState(Bundle bundle) {
        Parcelable parcelable;
        if (!hasKey() || (parcelable = bundle.getParcelable(this.mKey)) == null) {
            return;
        }
        this.mBaseMethodCalled = false;
        onRestoreInstanceState(parcelable);
        if (!this.mBaseMethodCalled) {
            throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
        }
    }

    public void dispatchSaveInstanceState(Bundle bundle) {
        if (hasKey()) {
            this.mBaseMethodCalled = false;
            Parcelable onSaveInstanceState = onSaveInstanceState();
            if (!this.mBaseMethodCalled) {
                throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
            }
            if (onSaveInstanceState != null) {
                bundle.putParcelable(this.mKey, onSaveInstanceState);
            }
        }
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final Bundle getExtras() {
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        return this.mExtras;
    }

    public final String getFragment() {
        return this.mFragment;
    }

    public long getId() {
        return this.mId;
    }

    public final Intent getIntent() {
        return this.mIntent;
    }

    public final String getKey() {
        return this.mKey;
    }

    public final int getLayoutResource() {
        return this.mLayoutResId;
    }

    public final InterfaceC0097u getOnPreferenceChangeListener() {
        return this.mOnChangeListener;
    }

    public final int getOrder() {
        return this.mOrder;
    }

    public final PreferenceGroup getParent() {
        return this.mParentGroup;
    }

    public final boolean getPersistedBoolean(boolean z4) {
        if (shouldPersist()) {
            AbstractC0101y preferenceDataStore = getPreferenceDataStore();
            return preferenceDataStore != null ? preferenceDataStore.getBoolean(this.mKey, z4) : this.mPreferenceManager.b().getBoolean(this.mKey, z4);
        }
        return z4;
    }

    public final int getPersistedInt(int i4) {
        return (shouldPersist() && getPreferenceDataStore() == null) ? this.mPreferenceManager.b().getInt(this.mKey, i4) : i4;
    }

    public final String getPersistedString(String str) {
        return (shouldPersist() && getPreferenceDataStore() == null) ? this.mPreferenceManager.b().getString(this.mKey, str) : str;
    }

    public final Set getPersistedStringSet(Set set) {
        return (shouldPersist() && getPreferenceDataStore() == null) ? this.mPreferenceManager.b().getStringSet(this.mKey, set) : set;
    }

    public final AbstractC0101y getPreferenceDataStore() {
        AbstractC0101y abstractC0101y = this.mPreferenceDataStore;
        if (abstractC0101y != null) {
            return abstractC0101y;
        }
        X x4 = this.mPreferenceManager;
        if (x4 != null) {
            x4.getClass();
        }
        return null;
    }

    public final X getPreferenceManager() {
        return this.mPreferenceManager;
    }

    public CharSequence getSummary() {
        InterfaceC0100x interfaceC0100x = this.mSummaryProvider;
        return interfaceC0100x != null ? interfaceC0100x.a(this) : this.mSummary;
    }

    public final InterfaceC0100x getSummaryProvider() {
        return this.mSummaryProvider;
    }

    public final CharSequence getTitle() {
        return this.mTitle;
    }

    public final int getWidgetLayoutResource() {
        return this.mWidgetLayoutResId;
    }

    public final boolean hasKey() {
        return !TextUtils.isEmpty(this.mKey);
    }

    public final boolean isCopyingEnabled() {
        return this.mCopyingEnabled;
    }

    public boolean isEnabled() {
        return this.mEnabled && this.mDependencyMet && this.mParentDependencyMet;
    }

    public final boolean isPersistent() {
        return this.mPersistent;
    }

    public final boolean isVisible() {
        return this.mVisible;
    }

    public void notifyChanged() {
        int indexOf;
        S s4 = this.mListener;
        if (s4 == null || (indexOf = s4.f1955c.indexOf(this)) == -1) {
            return;
        }
        s4.notifyItemChanged(indexOf, this);
    }

    public void notifyDependencyChange(boolean z4) {
        List list = this.mDependents;
        if (list == null) {
            return;
        }
        ArrayList arrayList = (ArrayList) list;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            Preference preference = (Preference) arrayList.get(i4);
            if (preference.mDependencyMet == z4) {
                preference.mDependencyMet = !z4;
                preference.notifyDependencyChange(preference.shouldDisableDependents());
                preference.notifyChanged();
            }
        }
    }

    public final void notifyHierarchyChanged() {
        S s4 = this.mListener;
        if (s4 != null) {
            Handler handler = s4.f1957e;
            O o4 = s4.f1958f;
            handler.removeCallbacks(o4);
            handler.post(o4);
        }
    }

    public void onAttached() {
        PreferenceScreen preferenceScreen;
        if (TextUtils.isEmpty(this.mDependencyKey)) {
            return;
        }
        String str = this.mDependencyKey;
        X x4 = this.mPreferenceManager;
        Preference preference = null;
        if (x4 != null && (preferenceScreen = x4.f1971g) != null) {
            preference = preferenceScreen.c(str);
        }
        if (preference == null) {
            throw new IllegalStateException("Dependency \"" + this.mDependencyKey + "\" not found for preference \"" + this.mKey + "\" (title: \"" + ((Object) this.mTitle) + "\"");
        }
        if (preference.mDependents == null) {
            preference.mDependents = new ArrayList();
        }
        ((ArrayList) preference.mDependents).add(this);
        boolean shouldDisableDependents = preference.shouldDisableDependents();
        if (this.mDependencyMet == shouldDisableDependents) {
            this.mDependencyMet = !shouldDisableDependents;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public final void onAttachedToHierarchy(X x4) {
        long j4;
        this.mPreferenceManager = x4;
        if (!this.mHasId) {
            synchronized (x4) {
                j4 = x4.f1966b;
                x4.f1966b = 1 + j4;
            }
            this.mId = j4;
        }
        if (getPreferenceDataStore() != null) {
            onSetInitialValue(this.mDefaultValue);
            return;
        }
        if (shouldPersist()) {
            if (((this.mPreferenceManager == null || getPreferenceDataStore() != null) ? null : this.mPreferenceManager.b()).contains(this.mKey)) {
                onSetInitialValue(null);
                return;
            }
        }
        Object obj = this.mDefaultValue;
        if (obj != null) {
            onSetInitialValue(obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(X.a0 r9) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.Preference.onBindViewHolder(X.a0):void");
    }

    public void onClick() {
    }

    public void onDetached() {
        List list;
        PreferenceScreen preferenceScreen;
        String str = this.mDependencyKey;
        if (str != null) {
            X x4 = this.mPreferenceManager;
            Preference c4 = (x4 == null || (preferenceScreen = x4.f1971g) == null) ? null : preferenceScreen.c(str);
            if (c4 == null || (list = c4.mDependents) == null) {
                return;
            }
            ((ArrayList) list).remove(this);
        }
    }

    public Object onGetDefaultValue(TypedArray typedArray, int i4) {
        return null;
    }

    public final void onParentChanged(boolean z4) {
        if (this.mParentDependencyMet == z4) {
            this.mParentDependencyMet = !z4;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public final void onPrepareForRemoval() {
        List list;
        PreferenceScreen preferenceScreen;
        String str = this.mDependencyKey;
        if (str != null) {
            X x4 = this.mPreferenceManager;
            Preference c4 = (x4 == null || (preferenceScreen = x4.f1971g) == null) ? null : preferenceScreen.c(str);
            if (c4 == null || (list = c4.mDependents) == null) {
                return;
            }
            ((ArrayList) list).remove(this);
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        this.mBaseMethodCalled = true;
        if (parcelable != AbsSavedState.EMPTY_STATE && parcelable != null) {
            throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
        }
    }

    public Parcelable onSaveInstanceState() {
        this.mBaseMethodCalled = true;
        return AbsSavedState.EMPTY_STATE;
    }

    public void onSetInitialValue(Object obj) {
    }

    public void performClick(View view) {
        Intent intent;
        W w4;
        if (isEnabled() && this.mSelectable) {
            onClick();
            InterfaceC0098v interfaceC0098v = this.mOnClickListener;
            if (interfaceC0098v != null) {
                interfaceC0098v.a(this);
                return;
            }
            X x4 = this.mPreferenceManager;
            if ((x4 == null || (w4 = x4.f1972h) == null || !w4.onPreferenceTreeClick(this)) && (intent = this.mIntent) != null) {
                this.mContext.startActivity(intent);
            }
        }
    }

    public void persistBoolean(boolean z4) {
        if (shouldPersist() && z4 != getPersistedBoolean(!z4)) {
            AbstractC0101y preferenceDataStore = getPreferenceDataStore();
            if (preferenceDataStore != null) {
                preferenceDataStore.putBoolean(this.mKey, z4);
                return;
            }
            SharedPreferences.Editor a4 = this.mPreferenceManager.a();
            a4.putBoolean(this.mKey, z4);
            if (!this.mPreferenceManager.f1969e) {
                a4.apply();
            }
        }
    }

    public final void persistInt(int i4) {
        if (shouldPersist() && i4 != getPersistedInt(~i4)) {
            if (getPreferenceDataStore() != null) {
                throw new UnsupportedOperationException("Not implemented on this data store");
            }
            SharedPreferences.Editor a4 = this.mPreferenceManager.a();
            a4.putInt(this.mKey, i4);
            if (!this.mPreferenceManager.f1969e) {
                a4.apply();
            }
        }
    }

    public final void persistString(String str) {
        if (shouldPersist() && !TextUtils.equals(str, getPersistedString(null))) {
            if (getPreferenceDataStore() != null) {
                throw new UnsupportedOperationException("Not implemented on this data store");
            }
            SharedPreferences.Editor a4 = this.mPreferenceManager.a();
            a4.putString(this.mKey, str);
            if (!this.mPreferenceManager.f1969e) {
                a4.apply();
            }
        }
    }

    public final void persistStringSet(Set set) {
        if (shouldPersist() && !set.equals(getPersistedStringSet(null))) {
            if (getPreferenceDataStore() != null) {
                throw new UnsupportedOperationException("Not implemented on this data store");
            }
            SharedPreferences.Editor a4 = this.mPreferenceManager.a();
            a4.putStringSet(this.mKey, set);
            if (!this.mPreferenceManager.f1969e) {
                a4.apply();
            }
        }
    }

    public final void setDefaultValue(Object obj) {
        this.mDefaultValue = obj;
    }

    public final void setEnabled(boolean z4) {
        if (this.mEnabled != z4) {
            this.mEnabled = z4;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public final void setFragment(String str) {
        this.mFragment = str;
    }

    public final void setIcon$1() {
        Drawable a4 = C0832a.a(R.drawable.ic_arrow_down_24dp, this.mContext);
        if (this.mIcon != a4) {
            this.mIcon = a4;
            this.mIconResId = 0;
            notifyChanged();
        }
        this.mIconResId = R.drawable.ic_arrow_down_24dp;
    }

    public final void setIconSpaceReserved() {
        if (this.mIconSpaceReserved) {
            this.mIconSpaceReserved = false;
            notifyChanged();
        }
    }

    public final void setIntent(Intent intent) {
        this.mIntent = intent;
    }

    public final void setKey(String str) {
        this.mKey = str;
        if (!this.mRequiresKey || hasKey()) {
            return;
        }
        if (TextUtils.isEmpty(this.mKey)) {
            throw new IllegalStateException("Preference does not have a key assigned.");
        }
        this.mRequiresKey = true;
    }

    public final void setLayoutResource() {
        this.mLayoutResId = R.layout.expand_button;
    }

    public final void setOnPreferenceChangeInternalListener(S s4) {
        this.mListener = s4;
    }

    public final void setOnPreferenceChangeListener(InterfaceC0097u interfaceC0097u) {
        this.mOnChangeListener = interfaceC0097u;
    }

    public final void setOnPreferenceClickListener(InterfaceC0098v interfaceC0098v) {
        this.mOnClickListener = interfaceC0098v;
    }

    public final void setOrder(int i4) {
        if (i4 != this.mOrder) {
            this.mOrder = i4;
            notifyHierarchyChanged();
        }
    }

    public final void setPersistent() {
        this.mPersistent = false;
    }

    public final void setSingleLineTitle() {
        this.mHasSingleLineTitleAttr = true;
        this.mSingleLineTitle = false;
    }

    public final void setSummary(int i4) {
        setSummary(this.mContext.getString(i4));
    }

    public final void setSummaryProvider(InterfaceC0100x interfaceC0100x) {
        this.mSummaryProvider = interfaceC0100x;
        notifyChanged();
    }

    public final void setTitle(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.mTitle)) {
            return;
        }
        this.mTitle = charSequence;
        notifyChanged();
    }

    public final void setVisible(boolean z4) {
        if (this.mVisible != z4) {
            this.mVisible = z4;
            S s4 = this.mListener;
            if (s4 != null) {
                Handler handler = s4.f1957e;
                O o4 = s4.f1958f;
                handler.removeCallbacks(o4);
                handler.post(o4);
            }
        }
    }

    public final void setWidgetLayoutResource() {
        this.mWidgetLayoutResId = R.layout.switch_preference_with_settings;
    }

    public boolean shouldDisableDependents() {
        return !isEnabled();
    }

    public final boolean shouldPersist() {
        return this.mPreferenceManager != null && this.mPersistent && hasKey();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        CharSequence charSequence = this.mTitle;
        if (!TextUtils.isEmpty(charSequence)) {
            sb.append(charSequence);
            sb.append(' ');
        }
        CharSequence summary = getSummary();
        if (!TextUtils.isEmpty(summary)) {
            sb.append(summary);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    public void setSummary(CharSequence charSequence) {
        if (this.mSummaryProvider == null) {
            if (TextUtils.equals(this.mSummary, charSequence)) {
                return;
            }
            this.mSummary = charSequence;
            notifyChanged();
            return;
        }
        throw new IllegalStateException("Preference already has a SummaryProvider set.");
    }

    public final void setTitle(int i4) {
        setTitle(this.mContext.getString(i4));
    }

    public final void onAttachedToHierarchy(X x4, long j4) {
        this.mId = j4;
        this.mHasId = true;
        try {
            onAttachedToHierarchy(x4);
        } finally {
            this.mHasId = false;
        }
    }

    public Preference(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, o.a(context, R.attr.preferenceStyle, 16842894));
    }

    public Preference(Context context) {
        this(context, null);
    }
}
