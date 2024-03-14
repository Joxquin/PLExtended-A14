package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchTarget;
import android.content.Context;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.OptionsPopupView;
import com.android.quickstep.views.LaunchableConstraintLayout;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import java.util.ArrayList;
import java.util.Locale;
import java.util.function.Consumer;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class SearchResultThumbnailView extends LaunchableConstraintLayout implements A2, View.OnClickListener {

    /* renamed from: x  reason: collision with root package name */
    public static final C0642e2 f6817x = new C0642e2();

    /* renamed from: d  reason: collision with root package name */
    public final C0719y0 f6818d;

    /* renamed from: e  reason: collision with root package name */
    public final X1.f f6819e;

    /* renamed from: f  reason: collision with root package name */
    public final int f6820f;

    /* renamed from: g  reason: collision with root package name */
    public final int f6821g;

    /* renamed from: h  reason: collision with root package name */
    public final int f6822h;

    /* renamed from: i  reason: collision with root package name */
    public final int f6823i;

    /* renamed from: j  reason: collision with root package name */
    public final int f6824j;

    /* renamed from: k  reason: collision with root package name */
    public final C0647g f6825k;

    /* renamed from: l  reason: collision with root package name */
    public final Drawable f6826l;

    /* renamed from: m  reason: collision with root package name */
    public final Drawable f6827m;

    /* renamed from: n  reason: collision with root package name */
    public SearchTarget f6828n;

    /* renamed from: o  reason: collision with root package name */
    public ImageView f6829o;

    /* renamed from: p  reason: collision with root package name */
    public TextView f6830p;

    /* renamed from: q  reason: collision with root package name */
    public C0695s0 f6831q;

    /* renamed from: r  reason: collision with root package name */
    public Consumer f6832r;

    /* renamed from: s  reason: collision with root package name */
    public int f6833s;

    /* renamed from: t  reason: collision with root package name */
    public final int f6834t;

    /* renamed from: u  reason: collision with root package name */
    public final int f6835u;

    /* renamed from: v  reason: collision with root package name */
    public final int f6836v;

    /* renamed from: w  reason: collision with root package name */
    public final int f6837w;

    public SearchResultThumbnailView(Context context) {
        this(context, null, 0);
    }

    public static void r(SearchResultThumbnailView searchResultThumbnailView, View view) {
        OptionsPopupView.OptionItem optionItem = new OptionsPopupView.OptionItem(searchResultThumbnailView.getContext(), R.string.action_share, R.drawable.ic_share, NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_SCREENSHOT_LONGPRESS_SHARE, new View$OnLongClickListenerC0638d2(searchResultThumbnailView, 1));
        RectF rectF = new RectF(Utilities.getViewBounds(view));
        float centerX = rectF.centerX();
        rectF.right = centerX;
        rectF.left = centerX;
        ArrayList arrayList = new ArrayList();
        arrayList.add(optionItem);
        OptionsPopupView.show((ActivityContext) searchResultThumbnailView.f6818d.f7271d, rectF, arrayList, true);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final void e(C0653h1 c0653h1) {
        s(c0653h1, 3, false);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ((C0649g1) view.getTag()).onItemClicked(view);
        A2.g(this.f6818d, this.f6828n, 5);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        setOnClickListener(this);
        setOnLongClickListener(new View$OnLongClickListenerC0638d2(this, 0));
        this.f6829o = (ImageView) findViewById(R.id.thumbnail);
        TextView textView = (TextView) findViewById(R.id.label);
        this.f6830p = textView;
        textView.setVisibility(8);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void s(com.google.android.apps.nexuslauncher.allapps.C0653h1 r21, int r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.allapps.SearchResultThumbnailView.s(com.google.android.apps.nexuslauncher.allapps.h1, int, boolean):void");
    }

    public final void t() {
        int i4;
        setTag(null);
        C0695s0 c0695s0 = this.f6831q;
        if (c0695s0 != null) {
            c0695s0.close();
        }
        this.f6829o.setImageDrawable(null);
        this.f6829o.setBackgroundDrawable(this.f6826l);
        androidx.constraintlayout.widget.d dVar = (androidx.constraintlayout.widget.d) this.f6829o.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) dVar).height = 0;
        ((ViewGroup.MarginLayoutParams) dVar).width = 0;
        this.f6830p.setText((CharSequence) null);
        this.f6830p.setVisibility(8);
        this.f6830p.setContentDescription(null);
        int i5 = this.f6820f;
        setPadding(i5, i5, i5, i5);
        int i6 = this.f6833s;
        if (i6 == 1) {
            i4 = this.f6821g;
        } else if (i6 != 2) {
            i4 = this.f6823i;
            Log.d("SearchResultScreenshotThumbnail", "Label padding will be left to default 3-column.");
        } else {
            i4 = this.f6822h;
        }
        this.f6830p.setPadding(i4, this.f6824j, i4, 0);
        ((androidx.constraintlayout.widget.d) this.f6829o.getLayoutParams()).f2799G = String.format(Locale.US, "H,%f", Float.valueOf(1.0f / (3.0f / this.f6833s)));
        setOnLongClickListener(null);
        setImportantForAccessibility(0);
    }

    public final void u(C0658i2 c0658i2) {
        this.f6829o.setImageDrawable(c0658i2.bitmap.isLowRes() ? new ColorDrawable(0) : c0658i2.newIcon(0, getContext()));
    }

    public SearchResultThumbnailView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchResultThumbnailView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f6832r = f6817x;
        C0719y0 f4 = C0719y0.f(context);
        this.f6818d = f4;
        this.f6825k = new C0647g(f4);
        this.f6819e = new X1.f(context.getApplicationContext(), new Supplier() { // from class: com.google.android.apps.nexuslauncher.allapps.c2
            @Override // java.util.function.Supplier
            public final Object get() {
                SearchResultThumbnailView searchResultThumbnailView = SearchResultThumbnailView.this;
                C0642e2 c0642e2 = SearchResultThumbnailView.f6817x;
                Object tag = searchResultThumbnailView.getTag();
                if (tag instanceof C0658i2) {
                    return ((C0658i2) tag).x();
                }
                return null;
            }
        }, (ActivityContext) f4.f7271d, null);
        this.f6826l = getContext().getDrawable(R.drawable.thumbnail_image_background);
        this.f6827m = getResources().getDrawable(R.drawable.entity_image_background);
        this.f6820f = getContext().getResources().getDimensionPixelSize(R.dimen.search_result_thumbnail_padding);
        this.f6821g = getContext().getResources().getDimensionPixelSize(R.dimen.search_result_thumbnail_label_padding_one_column);
        this.f6822h = getContext().getResources().getDimensionPixelSize(R.dimen.search_result_thumbnail_label_padding_two_column);
        this.f6823i = getContext().getResources().getDimensionPixelSize(R.dimen.search_result_thumbnail_label_padding_three_column);
        this.f6824j = getContext().getResources().getDimensionPixelSize(R.dimen.search_result_thumbnail_label_top_padding);
        this.f6833s = 3;
        this.f6834t = GraphicsUtils.getAttrColor(17957017, f4);
        this.f6835u = GraphicsUtils.getAttrColor(17957035, f4);
        this.f6836v = getResources().getDimensionPixelSize(R.dimen.search_result_thumbnail_target_size);
        this.f6837w = getResources().getDimensionPixelSize(R.dimen.search_result_thumbnail_icon_size);
    }
}
