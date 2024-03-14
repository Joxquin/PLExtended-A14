package j2;

import android.util.Property;
import android.view.ViewGroup;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class d extends Property {

    /* renamed from: a  reason: collision with root package name */
    public static final d f10706a = new d();

    public d() {
        super(Float.class, "childrenAlpha");
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        Float f4 = (Float) ((ViewGroup) obj).getTag(R.id.mtrl_internal_children_alpha_tag);
        return f4 != null ? f4 : Float.valueOf(1.0f);
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        ViewGroup viewGroup = (ViewGroup) obj;
        float floatValue = ((Float) obj2).floatValue();
        viewGroup.setTag(R.id.mtrl_internal_children_alpha_tag, Float.valueOf(floatValue));
        int childCount = viewGroup.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            viewGroup.getChildAt(i4).setAlpha(floatValue);
        }
    }
}
