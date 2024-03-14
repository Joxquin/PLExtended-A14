package F2;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import androidx.core.view.C0186x;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class C extends ArrayAdapter {

    /* renamed from: d  reason: collision with root package name */
    public ColorStateList f410d;

    /* renamed from: e  reason: collision with root package name */
    public ColorStateList f411e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ D f412f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C(D d4, Context context, int i4, String[] strArr) {
        super(context, i4, strArr);
        ColorStateList colorStateList;
        this.f412f = d4;
        ColorStateList colorStateList2 = d4.f418m;
        ColorStateList colorStateList3 = null;
        if (colorStateList2 != null) {
            int[] iArr = {16842919};
            colorStateList = new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{colorStateList2.getColorForState(iArr, 0), 0});
        } else {
            colorStateList = null;
        }
        this.f411e = colorStateList;
        if (d4.f417l != 0) {
            ColorStateList colorStateList4 = d4.f418m;
            if (colorStateList4 != null) {
                int[] iArr2 = {16843623, -16842919};
                int[] iArr3 = {16842913, -16842919};
                colorStateList3 = new ColorStateList(new int[][]{iArr3, iArr2, new int[0]}, new int[]{E.a.h(colorStateList4.getColorForState(iArr3, 0), d4.f417l), E.a.h(d4.f418m.getColorForState(iArr2, 0), d4.f417l), d4.f417l});
            }
        }
        this.f410d = colorStateList3;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i4, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i4, view, viewGroup);
        if (view2 instanceof TextView) {
            TextView textView = (TextView) view2;
            RippleDrawable rippleDrawable = null;
            if (this.f412f.getText().toString().contentEquals(textView.getText())) {
                if (this.f412f.f417l != 0) {
                    ColorDrawable colorDrawable = new ColorDrawable(this.f412f.f417l);
                    if (this.f411e != null) {
                        colorDrawable.setTintList(this.f410d);
                        rippleDrawable = new RippleDrawable(this.f411e, colorDrawable, null);
                    } else {
                        rippleDrawable = colorDrawable;
                    }
                }
            }
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            C0186x.m(textView, rippleDrawable);
        }
        return view2;
    }
}
