package androidx.preference;

import D.o;
import X.U;
import X.b0;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public abstract class DialogPreference extends Preference {

    /* renamed from: d  reason: collision with root package name */
    public final CharSequence f3639d;

    /* renamed from: e  reason: collision with root package name */
    public final CharSequence f3640e;

    /* renamed from: f  reason: collision with root package name */
    public final Drawable f3641f;

    /* renamed from: g  reason: collision with root package name */
    public final CharSequence f3642g;

    /* renamed from: h  reason: collision with root package name */
    public final CharSequence f3643h;

    /* renamed from: i  reason: collision with root package name */
    public final int f3644i;

    public DialogPreference() {
        throw null;
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4, 0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b0.f1987c, i4, 0);
        String b4 = o.b(obtainStyledAttributes, 9, 0);
        this.f3639d = b4;
        if (b4 == null) {
            this.f3639d = getTitle();
        }
        this.f3640e = o.b(obtainStyledAttributes, 8, 1);
        Drawable drawable = obtainStyledAttributes.getDrawable(6);
        this.f3641f = drawable == null ? obtainStyledAttributes.getDrawable(2) : drawable;
        this.f3642g = o.b(obtainStyledAttributes, 11, 3);
        this.f3643h = o.b(obtainStyledAttributes, 10, 4);
        this.f3644i = obtainStyledAttributes.getResourceId(7, obtainStyledAttributes.getResourceId(5, 0));
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public void onClick() {
        U u4 = getPreferenceManager().f1973i;
        if (u4 != null) {
            u4.onDisplayPreferenceDialog(this);
        }
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, o.a(context, R.attr.dialogPreferenceStyle, 16842897));
    }
}
