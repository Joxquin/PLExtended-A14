package q2;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.systemui.shared.R;
import com.google.android.material.chip.Chip;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class d extends Q.c {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Chip f11992d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Chip chip, Chip chip2) {
        super(chip2);
        this.f11992d = chip;
    }

    @Override // Q.c
    public final int getVirtualViewAt(float f4, float f5) {
        Rect rect = Chip.f7830w;
        Chip chip = this.f11992d;
        return (chip.e() && chip.d().contains(f4, f5)) ? 1 : 0;
    }

    @Override // Q.c
    public final void getVisibleVirtualViews(List list) {
        ((ArrayList) list).add(0);
        Rect rect = Chip.f7830w;
        this.f11992d.e();
    }

    @Override // Q.c
    public final boolean onPerformActionForVirtualView(int i4, int i5) {
        if (i5 == 16) {
            Chip chip = this.f11992d;
            if (i4 == 0) {
                return chip.performClick();
            }
            if (i4 == 1) {
                chip.playSoundEffect(0);
            }
        }
        return false;
    }

    @Override // Q.c
    public final void onPopulateNodeForHost(M.e eVar) {
        Chip chip = this.f11992d;
        f fVar = chip.f7833h;
        boolean z4 = fVar != null && fVar.f12021U;
        AccessibilityNodeInfo accessibilityNodeInfo = eVar.f1349a;
        accessibilityNodeInfo.setCheckable(z4);
        accessibilityNodeInfo.setClickable(chip.isClickable());
        eVar.h(chip.getAccessibilityClassName());
        eVar.k(chip.getText());
    }

    @Override // Q.c
    public final void onPopulateNodeForVirtualView(int i4, M.e eVar) {
        if (i4 != 1) {
            eVar.j("");
            eVar.g(Chip.f7830w);
            return;
        }
        Chip chip = this.f11992d;
        f fVar = chip.f7833h;
        CharSequence text = chip.getText();
        Context context = chip.getContext();
        Object[] objArr = new Object[1];
        objArr[0] = TextUtils.isEmpty(text) ? "" : text;
        eVar.j(context.getString(R.string.mtrl_chip_close_icon_content_description, objArr).trim());
        RectF d4 = chip.d();
        chip.f7845t.set((int) d4.left, (int) d4.top, (int) d4.right, (int) d4.bottom);
        eVar.g(chip.f7845t);
        eVar.b(M.c.f1334e);
        eVar.f1349a.setEnabled(chip.isEnabled());
    }

    @Override // Q.c
    public final void onVirtualViewKeyboardFocusChanged(int i4, boolean z4) {
        if (i4 == 1) {
            Chip chip = this.f11992d;
            chip.f7840o = z4;
            chip.refreshDrawableState();
        }
    }
}
