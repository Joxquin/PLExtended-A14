package com.google.android.systemui.smartspace;

import K2.AbstractC0041n;
import K2.t;
import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.shared.R;
import n1.d;
/* loaded from: classes.dex */
public class BcSmartspaceCardSports extends AbstractC0041n {

    /* renamed from: e  reason: collision with root package name */
    public TextView f8313e;

    /* renamed from: f  reason: collision with root package name */
    public TextView f8314f;

    /* renamed from: g  reason: collision with root package name */
    public TextView f8315g;

    /* renamed from: h  reason: collision with root package name */
    public ImageView f8316h;

    /* renamed from: i  reason: collision with root package name */
    public ImageView f8317i;

    public BcSmartspaceCardSports(Context context) {
        super(context);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8313e = (TextView) findViewById(R.id.match_time_summary);
        this.f8314f = (TextView) findViewById(R.id.first_competitor_score);
        this.f8315g = (TextView) findViewById(R.id.second_competitor_score);
        this.f8316h = (ImageView) findViewById(R.id.first_competitor_logo);
        this.f8317i = (ImageView) findViewById(R.id.second_competitor_logo);
    }

    @Override // K2.AbstractC0041n
    public final void s() {
        t.f(this.f8313e, 4);
        t.f(this.f8314f, 4);
        t.f(this.f8315g, 4);
        t.f(this.f8316h, 4);
        t.f(this.f8317i, 4);
    }

    @Override // K2.AbstractC0041n
    public final boolean t(SmartspaceTarget smartspaceTarget, d dVar, L2.d dVar2) {
        boolean z4;
        SmartspaceAction baseAction = smartspaceTarget.getBaseAction();
        Bundle extras = baseAction == null ? null : baseAction.getExtras();
        if (extras != null) {
            if (extras.containsKey("matchTimeSummary")) {
                String string = extras.getString("matchTimeSummary");
                TextView textView = this.f8313e;
                if (textView == null) {
                    Log.w("BcSmartspaceCardSports", "No match time summary view to update");
                } else {
                    t.f(textView, 0);
                    this.f8313e.setText(string);
                }
                z4 = true;
            } else {
                z4 = false;
            }
            if (extras.containsKey("firstCompetitorScore")) {
                String string2 = extras.getString("firstCompetitorScore");
                TextView textView2 = this.f8314f;
                if (textView2 == null) {
                    Log.w("BcSmartspaceCardSports", "No first competitor logo view to update");
                } else {
                    t.f(textView2, 0);
                    this.f8314f.setText(string2);
                }
                z4 = true;
            }
            if (extras.containsKey("secondCompetitorScore")) {
                String string3 = extras.getString("secondCompetitorScore");
                TextView textView3 = this.f8315g;
                if (textView3 == null) {
                    Log.w("BcSmartspaceCardSports", "No second competitor logo view to update");
                } else {
                    t.f(textView3, 0);
                    this.f8315g.setText(string3);
                }
                z4 = true;
            }
            if (extras.containsKey("firstCompetitorLogo")) {
                Bitmap bitmap = (Bitmap) extras.get("firstCompetitorLogo");
                ImageView imageView = this.f8316h;
                if (imageView == null) {
                    Log.w("BcSmartspaceCardSports", "No first competitor logo view to update");
                } else {
                    t.f(imageView, 0);
                    this.f8316h.setImageBitmap(bitmap);
                }
                z4 = true;
            }
            if (extras.containsKey("secondCompetitorLogo")) {
                Bitmap bitmap2 = (Bitmap) extras.get("secondCompetitorLogo");
                ImageView imageView2 = this.f8317i;
                if (imageView2 == null) {
                    Log.w("BcSmartspaceCardSports", "No second competitor logo view to update");
                } else {
                    t.f(imageView2, 0);
                    this.f8317i.setImageBitmap(bitmap2);
                }
                return true;
            }
            return z4;
        }
        return false;
    }

    @Override // K2.AbstractC0041n
    public final void u(int i4) {
        this.f8313e.setTextColor(i4);
        this.f8314f.setTextColor(i4);
        this.f8315g.setTextColor(i4);
    }

    public BcSmartspaceCardSports(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
