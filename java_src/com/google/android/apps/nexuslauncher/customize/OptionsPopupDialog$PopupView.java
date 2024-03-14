package com.google.android.apps.nexuslauncher.customize;

import O1.l;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.OptionsPopupView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class OptionsPopupDialog$PopupView extends OptionsPopupView {
    public OptionsPopupDialog$PopupView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public final boolean isShortcutOrWrapper(View view) {
        return super.isShortcutOrWrapper(view) || view.getId() == R.id.wallpaper_container;
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public final void show() {
        super.show();
        int measuredHeight = getMeasuredHeight();
        l lVar = (l) ActivityContext.lookupContext(getContext());
        int i4 = lVar.f1457f.availableHeightPx;
        if (measuredHeight > i4) {
            lVar.f1462k.getLayoutParams().height -= measuredHeight - i4;
            lVar.f1462k.b();
        }
    }
}
