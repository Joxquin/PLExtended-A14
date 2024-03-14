package com.google.android.apps.nexuslauncher.allapps;

import android.content.Context;
import android.text.Html;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BubbleTextHolder;
import com.android.systemui.shared.R;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class SearchResultSmallIconRow extends com.android.systemui.animation.view.a implements A2, BubbleTextHolder {

    /* renamed from: z  reason: collision with root package name */
    public static final /* synthetic */ int f6794z = 0;

    /* renamed from: e  reason: collision with root package name */
    public final C0719y0 f6795e;

    /* renamed from: f  reason: collision with root package name */
    public final SearchResultIcon[] f6796f;

    /* renamed from: g  reason: collision with root package name */
    public SearchResultIcon f6797g;

    /* renamed from: h  reason: collision with root package name */
    public TextView f6798h;

    /* renamed from: i  reason: collision with root package name */
    public TextView f6799i;

    /* renamed from: j  reason: collision with root package name */
    public TextView f6800j;

    /* renamed from: k  reason: collision with root package name */
    public final int f6801k;

    /* renamed from: l  reason: collision with root package name */
    public final int f6802l;

    /* renamed from: m  reason: collision with root package name */
    public final int f6803m;

    /* renamed from: n  reason: collision with root package name */
    public final int f6804n;

    /* renamed from: o  reason: collision with root package name */
    public final String f6805o;

    /* renamed from: p  reason: collision with root package name */
    public final int f6806p;

    /* renamed from: q  reason: collision with root package name */
    public final int f6807q;

    /* renamed from: r  reason: collision with root package name */
    public final int f6808r;

    /* renamed from: s  reason: collision with root package name */
    public final int f6809s;

    /* renamed from: t  reason: collision with root package name */
    public final int f6810t;

    /* renamed from: u  reason: collision with root package name */
    public ImageView f6811u;

    /* renamed from: v  reason: collision with root package name */
    public TextView f6812v;

    /* renamed from: w  reason: collision with root package name */
    public ImageButton f6813w;

    /* renamed from: x  reason: collision with root package name */
    public View f6814x;

    /* renamed from: y  reason: collision with root package name */
    public SearchResultThumbnailView f6815y;

    public SearchResultSmallIconRow(Context context) {
        this(context, null, 0);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final CharSequence a() {
        return this.f6800j.getText();
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final boolean c() {
        return this.f6797g.c();
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final boolean d() {
        return this.f6797g.d();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03c4  */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r4v17, types: [android.widget.TextView] */
    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(com.google.android.apps.nexuslauncher.allapps.C0653h1 r24) {
        /*
            Method dump skipped, instructions count: 1014
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.allapps.SearchResultSmallIconRow.e(com.google.android.apps.nexuslauncher.allapps.h1):void");
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final CharSequence f() {
        return this.f6798h.getText();
    }

    @Override // com.android.launcher3.views.BubbleTextHolder
    public final BubbleTextView getBubbleText() {
        return this.f6797g;
    }

    public CharSequence getMarkText() {
        return this.f6812v.getText();
    }

    public final void k(boolean z4, int i4, int i5, int i6, int i7) {
        setMinimumHeight(i4);
        int id = this.f6798h.getId();
        int id2 = this.f6799i.getId();
        int id3 = this.f6800j.getId();
        int id4 = this.f6812v.getId();
        int id5 = this.f6811u.getId();
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.text_rows);
        androidx.constraintlayout.widget.q qVar = new androidx.constraintlayout.widget.q();
        qVar.c(constraintLayout);
        int id6 = constraintLayout.getId();
        qVar.d(id, 6, id6, 6);
        qVar.d(id, 3, id6, 3);
        qVar.d(id2, 6, id, 7);
        qVar.d(id2, 3, id, 3);
        qVar.d(id2, 4, id, 4);
        qVar.d(id4, 6, id2, 7);
        qVar.d(id4, 3, id, 3);
        qVar.d(id4, 4, id, 4);
        if (!z4) {
            id4 = id3;
        }
        qVar.d(id5, 6, id4, 7);
        qVar.d(id5, 3, id, 3);
        qVar.d(id5, 4, id, 4);
        if (i5 == 1) {
            qVar.d(id3, 6, id, 6);
            qVar.d(id3, 3, id, 4);
        } else {
            qVar.d(id3, 6, id2, 7);
            qVar.d(id3, 3, id6, 3);
        }
        qVar.a(constraintLayout);
        this.f6800j.setPadding(i6, 0, i6, 0);
        this.f6800j.setSingleLine(i7 == 1);
        this.f6800j.setMaxLines(i7);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final boolean n() {
        this.f6797g.f6728B = true;
        return performClick();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        SearchResultIcon[] searchResultIconArr;
        super.onFinishInflate();
        SearchResultIcon searchResultIcon = (SearchResultIcon) findViewById(R.id.icon);
        this.f6797g = searchResultIcon;
        searchResultIcon.setImportantForAccessibility(2);
        SearchResultIcon searchResultIcon2 = this.f6797g;
        searchResultIcon2.f6732f = new Consumer(this) { // from class: com.google.android.apps.nexuslauncher.allapps.a2

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ SearchResultSmallIconRow f7005b;

            {
                this.f7005b = this;
            }

            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r2) {
                    case 0:
                        SearchResultSmallIconRow searchResultSmallIconRow = this.f7005b;
                        ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) obj;
                        int i4 = SearchResultSmallIconRow.f6794z;
                        searchResultSmallIconRow.setTag(itemInfoWithIcon);
                        CharSequence charSequence = itemInfoWithIcon.title;
                        if (charSequence != null) {
                            searchResultSmallIconRow.f6798h.setText(Html.fromHtml(charSequence.toString()));
                            searchResultSmallIconRow.f6798h.setContentDescription(itemInfoWithIcon.contentDescription);
                            return;
                        }
                        return;
                    default:
                        SearchResultSmallIconRow searchResultSmallIconRow2 = this.f7005b;
                        int i5 = SearchResultSmallIconRow.f6794z;
                        searchResultSmallIconRow2.getClass();
                        if (((BitmapInfo) obj).isLowRes()) {
                            searchResultSmallIconRow2.f6814x.setVisibility(8);
                            return;
                        }
                        searchResultSmallIconRow2.f6814x.setVisibility(0);
                        if (searchResultSmallIconRow2.f6813w.getVisibility() == 0) {
                            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) searchResultSmallIconRow2.f6813w.getLayoutParams();
                            marginLayoutParams.setMarginStart(searchResultSmallIconRow2.f6808r);
                            marginLayoutParams.setMarginEnd(searchResultSmallIconRow2.f6807q);
                            searchResultSmallIconRow2.f6813w.setLayoutParams(marginLayoutParams);
                            return;
                        }
                        return;
                }
            }
        };
        int iconSize = searchResultIcon2.getIconSize();
        this.f6798h = (TextView) findViewById(R.id.title);
        TextView textView = (TextView) findViewById(R.id.delimeter);
        this.f6799i = textView;
        textView.setVisibility(8);
        TextView textView2 = (TextView) findViewById(R.id.subtitle);
        this.f6800j = textView2;
        textView2.setVisibility(8);
        TextView textView3 = (TextView) findViewById(R.id.mark_view);
        this.f6812v = textView3;
        textView3.setVisibility(8);
        ImageView imageView = (ImageView) findViewById(R.id.work_badge);
        this.f6811u = imageView;
        imageView.setVisibility(8);
        this.f6797g.getLayoutParams().height = iconSize;
        this.f6797g.getLayoutParams().width = iconSize;
        this.f6797g.setTextVisibility(false);
        this.f6796f[0] = (SearchResultIcon) findViewById(R.id.shortcut_0);
        this.f6796f[1] = (SearchResultIcon) findViewById(R.id.shortcut_1);
        this.f6796f[2] = (SearchResultIcon) findViewById(R.id.shortcut_2);
        for (SearchResultIcon searchResultIcon3 : this.f6796f) {
            searchResultIcon3.getLayoutParams().width = this.f6797g.getIconSize();
            searchResultIcon3.getLayoutParams().height = this.f6797g.getIconSize();
        }
        this.f6813w = (ImageButton) findViewById(R.id.query_builder);
        this.f6814x = findViewById(R.id.suggest_entity_container);
        SearchResultThumbnailView searchResultThumbnailView = (SearchResultThumbnailView) findViewById(R.id.result_thumbnail);
        this.f6815y = searchResultThumbnailView;
        Consumer consumer = new Consumer(this) { // from class: com.google.android.apps.nexuslauncher.allapps.a2

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ SearchResultSmallIconRow f7005b;

            {
                this.f7005b = this;
            }

            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r2) {
                    case 0:
                        SearchResultSmallIconRow searchResultSmallIconRow = this.f7005b;
                        ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) obj;
                        int i4 = SearchResultSmallIconRow.f6794z;
                        searchResultSmallIconRow.setTag(itemInfoWithIcon);
                        CharSequence charSequence = itemInfoWithIcon.title;
                        if (charSequence != null) {
                            searchResultSmallIconRow.f6798h.setText(Html.fromHtml(charSequence.toString()));
                            searchResultSmallIconRow.f6798h.setContentDescription(itemInfoWithIcon.contentDescription);
                            return;
                        }
                        return;
                    default:
                        SearchResultSmallIconRow searchResultSmallIconRow2 = this.f7005b;
                        int i5 = SearchResultSmallIconRow.f6794z;
                        searchResultSmallIconRow2.getClass();
                        if (((BitmapInfo) obj).isLowRes()) {
                            searchResultSmallIconRow2.f6814x.setVisibility(8);
                            return;
                        }
                        searchResultSmallIconRow2.f6814x.setVisibility(0);
                        if (searchResultSmallIconRow2.f6813w.getVisibility() == 0) {
                            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) searchResultSmallIconRow2.f6813w.getLayoutParams();
                            marginLayoutParams.setMarginStart(searchResultSmallIconRow2.f6808r);
                            marginLayoutParams.setMarginEnd(searchResultSmallIconRow2.f6807q);
                            searchResultSmallIconRow2.f6813w.setLayoutParams(marginLayoutParams);
                            return;
                        }
                        return;
                }
            }
        };
        searchResultThumbnailView.getClass();
        searchResultThumbnailView.f6832r = consumer;
        setOnClickListener(this.f6797g);
        setOnLongClickListener(this.f6797g);
        setAccessibilityDelegate(((ActivityContext) this.f6795e.f7271d).getAccessibilityDelegate());
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0 || action == 2) {
            this.f6797g.f6745s.set((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        return super.onTouchEvent(motionEvent);
    }

    public SearchResultSmallIconRow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchResultSmallIconRow(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f6796f = new SearchResultIcon[3];
        this.f6795e = C0719y0.f(context);
        this.f6801k = getResources().getDimensionPixelSize(R.dimen.search_result_row_medium_height);
        this.f6802l = getResources().getDimensionPixelSize(R.dimen.search_result_small_row_height);
        this.f6803m = getResources().getDimensionPixelSize(R.dimen.search_result_small_horizontal_padding);
        this.f6809s = GraphicsUtils.getAttrColor(16842806, context);
        this.f6810t = GraphicsUtils.getAttrColor(16842808, context);
        this.f6804n = getResources().getDimensionPixelSize(R.dimen.search_result_small_subtitle_padding_right_no_query_builder);
        this.f6805o = getResources().getString(R.string.query_builder_content_description);
        this.f6806p = getResources().getDimensionPixelSize(R.dimen.suggest_image_horizontal_margin);
        this.f6807q = getResources().getDimensionPixelSize(R.dimen.query_builder_margin_end);
        this.f6808r = getResources().getDimensionPixelSize(R.dimen.query_builder_margin_start_with_image);
    }
}
