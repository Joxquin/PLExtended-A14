package androidx.preference;

import X.a0;
import X.b0;
import X.c0;
import X.d0;
import X.f0;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.SeekBar;
import android.widget.TextView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class SeekBarPreference extends Preference {

    /* renamed from: d  reason: collision with root package name */
    public int f3709d;

    /* renamed from: e  reason: collision with root package name */
    public int f3710e;

    /* renamed from: f  reason: collision with root package name */
    public int f3711f;

    /* renamed from: g  reason: collision with root package name */
    public int f3712g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f3713h;

    /* renamed from: i  reason: collision with root package name */
    public SeekBar f3714i;

    /* renamed from: j  reason: collision with root package name */
    public TextView f3715j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f3716k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f3717l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f3718m;

    /* renamed from: n  reason: collision with root package name */
    public final c0 f3719n;

    /* renamed from: o  reason: collision with root package name */
    public final d0 f3720o;

    public SeekBarPreference() {
        throw null;
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, R.attr.seekBarPreferenceStyle, 0);
        this.f3719n = new c0(this);
        this.f3720o = new d0(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b0.f1996l, R.attr.seekBarPreferenceStyle, 0);
        this.f3710e = obtainStyledAttributes.getInt(3, 0);
        int i5 = obtainStyledAttributes.getInt(1, 100);
        int i6 = this.f3710e;
        i5 = i5 < i6 ? i6 : i5;
        if (i5 != this.f3711f) {
            this.f3711f = i5;
            notifyChanged();
        }
        int i7 = obtainStyledAttributes.getInt(4, 0);
        if (i7 != this.f3712g) {
            this.f3712g = Math.min(this.f3711f - this.f3710e, Math.abs(i7));
            notifyChanged();
        }
        this.f3716k = obtainStyledAttributes.getBoolean(2, true);
        this.f3717l = obtainStyledAttributes.getBoolean(5, false);
        this.f3718m = obtainStyledAttributes.getBoolean(6, false);
        obtainStyledAttributes.recycle();
    }

    public final void a(int i4, boolean z4) {
        int i5 = this.f3710e;
        if (i4 < i5) {
            i4 = i5;
        }
        int i6 = this.f3711f;
        if (i4 > i6) {
            i4 = i6;
        }
        if (i4 != this.f3709d) {
            this.f3709d = i4;
            TextView textView = this.f3715j;
            if (textView != null) {
                textView.setText(String.valueOf(i4));
            }
            persistInt(i4);
            if (z4) {
                notifyChanged();
            }
        }
    }

    public final void c(SeekBar seekBar) {
        int progress = seekBar.getProgress() + this.f3710e;
        if (progress != this.f3709d) {
            callChangeListener(Integer.valueOf(progress));
            a(progress, false);
        }
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(a0 a0Var) {
        super.onBindViewHolder(a0Var);
        a0Var.itemView.setOnKeyListener(this.f3720o);
        this.f3714i = (SeekBar) a0Var.a(R.id.seekbar);
        TextView textView = (TextView) a0Var.a(R.id.seekbar_value);
        this.f3715j = textView;
        if (this.f3717l) {
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
            this.f3715j = null;
        }
        SeekBar seekBar = this.f3714i;
        if (seekBar == null) {
            Log.e("SeekBarPreference", "SeekBar view is null in onBindViewHolder.");
            return;
        }
        seekBar.setOnSeekBarChangeListener(this.f3719n);
        this.f3714i.setMax(this.f3711f - this.f3710e);
        int i4 = this.f3712g;
        if (i4 != 0) {
            this.f3714i.setKeyProgressIncrement(i4);
        } else {
            this.f3712g = this.f3714i.getKeyProgressIncrement();
        }
        this.f3714i.setProgress(this.f3709d - this.f3710e);
        int i5 = this.f3709d;
        TextView textView2 = this.f3715j;
        if (textView2 != null) {
            textView2.setText(String.valueOf(i5));
        }
        this.f3714i.setEnabled(isEnabled());
    }

    @Override // androidx.preference.Preference
    public final Object onGetDefaultValue(TypedArray typedArray, int i4) {
        return Integer.valueOf(typedArray.getInt(i4, 0));
    }

    @Override // androidx.preference.Preference
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(f0.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        f0 f0Var = (f0) parcelable;
        super.onRestoreInstanceState(f0Var.getSuperState());
        this.f3709d = f0Var.f2004d;
        this.f3710e = f0Var.f2005e;
        this.f3711f = f0Var.f2006f;
        notifyChanged();
    }

    @Override // androidx.preference.Preference
    public final Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return onSaveInstanceState;
        }
        f0 f0Var = new f0(onSaveInstanceState);
        f0Var.f2004d = this.f3709d;
        f0Var.f2005e = this.f3710e;
        f0Var.f2006f = this.f3711f;
        return f0Var;
    }

    @Override // androidx.preference.Preference
    public final void onSetInitialValue(Object obj) {
        if (obj == null) {
            obj = 0;
        }
        a(getPersistedInt(((Integer) obj).intValue()), true);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
