package X;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.E0;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class a0 extends E0 {

    /* renamed from: d  reason: collision with root package name */
    public final Drawable f1980d;

    /* renamed from: e  reason: collision with root package name */
    public final ColorStateList f1981e;

    /* renamed from: f  reason: collision with root package name */
    public final SparseArray f1982f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f1983g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f1984h;

    public a0(View view) {
        super(view);
        SparseArray sparseArray = new SparseArray(4);
        this.f1982f = sparseArray;
        TextView textView = (TextView) view.findViewById(16908310);
        sparseArray.put(16908310, textView);
        sparseArray.put(16908304, view.findViewById(16908304));
        sparseArray.put(16908294, view.findViewById(16908294));
        sparseArray.put(R.id.icon_frame, view.findViewById(R.id.icon_frame));
        sparseArray.put(16908350, view.findViewById(16908350));
        this.f1980d = view.getBackground();
        if (textView != null) {
            this.f1981e = textView.getTextColors();
        }
    }

    public final View a(int i4) {
        SparseArray sparseArray = this.f1982f;
        View view = (View) sparseArray.get(i4);
        if (view != null) {
            return view;
        }
        View findViewById = this.itemView.findViewById(i4);
        if (findViewById != null) {
            sparseArray.put(i4, findViewById);
        }
        return findViewById;
    }
}
