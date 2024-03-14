package com.google.android.systemui.smartspace;

import K2.AbstractC0041n;
import K2.C0032e;
import K2.t;
import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.systemui.shared.R;
import java.util.List;
import n1.d;
/* loaded from: classes.dex */
public class BcSmartspaceCardCombination extends AbstractC0041n {

    /* renamed from: e  reason: collision with root package name */
    public ConstraintLayout f8292e;

    /* renamed from: f  reason: collision with root package name */
    public ConstraintLayout f8293f;

    public BcSmartspaceCardCombination(Context context) {
        super(context);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8292e = (ConstraintLayout) findViewById(R.id.first_sub_card);
        this.f8293f = (ConstraintLayout) findViewById(R.id.second_sub_card);
    }

    @Override // K2.AbstractC0041n
    public final void s() {
        t.f(this.f8292e, 8);
        t.f(this.f8293f, 8);
    }

    @Override // K2.AbstractC0041n
    public boolean t(SmartspaceTarget smartspaceTarget, d dVar, L2.d dVar2) {
        SmartspaceAction smartspaceAction;
        List actionChips = smartspaceTarget.getActionChips();
        if (actionChips == null || actionChips.size() < 1 || (smartspaceAction = (SmartspaceAction) actionChips.get(0)) == null) {
            return false;
        }
        ConstraintLayout constraintLayout = this.f8292e;
        boolean z4 = constraintLayout != null && v(constraintLayout, smartspaceTarget, smartspaceAction, dVar, dVar2);
        boolean z5 = actionChips.size() > 1 && actionChips.get(1) != null;
        boolean v4 = z5 ? v(this.f8293f, smartspaceTarget, (SmartspaceAction) actionChips.get(1), dVar, dVar2) : true;
        if (getLayoutParams() instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getLayoutParams();
            if (z5 && v4) {
                layoutParams.weight = 3.0f;
            } else {
                layoutParams.weight = 1.0f;
            }
            setLayoutParams(layoutParams);
        }
        return z4 && v4;
    }

    @Override // K2.AbstractC0041n
    public final void u(int i4) {
    }

    public final boolean v(ConstraintLayout constraintLayout, SmartspaceTarget smartspaceTarget, SmartspaceAction smartspaceAction, d dVar, L2.d dVar2) {
        boolean z4;
        TextView textView = (TextView) constraintLayout.findViewById(R.id.sub_card_text);
        ImageView imageView = (ImageView) constraintLayout.findViewById(R.id.sub_card_icon);
        if (textView == null) {
            Log.w("BcSmartspaceCardCombination", "No sub-card text field to update");
            return false;
        } else if (imageView == null) {
            Log.w("BcSmartspaceCardCombination", "No sub-card image field to update");
            return false;
        } else {
            C0032e.g(constraintLayout, smartspaceTarget, smartspaceAction, dVar, "BcSmartspaceCardCombination", dVar2);
            Drawable b4 = C0032e.b(getContext(), smartspaceAction.getIcon());
            boolean z5 = true;
            if (b4 == null) {
                t.f(imageView, 8);
                z4 = false;
            } else {
                imageView.setImageDrawable(b4);
                t.f(imageView, 0);
                z4 = true;
            }
            CharSequence title = smartspaceAction.getTitle();
            if (TextUtils.isEmpty(title)) {
                t.f(textView, 8);
                z5 = z4;
            } else {
                textView.setText(title);
                t.f(textView, 0);
            }
            constraintLayout.setContentDescription(z5 ? smartspaceAction.getContentDescription() : null);
            if (z5) {
                t.f(constraintLayout, 0);
            } else {
                t.f(constraintLayout, 8);
            }
            return z5;
        }
    }

    public BcSmartspaceCardCombination(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
