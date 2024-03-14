package com.google.android.apps.nexuslauncher.qsb;

import P1.e;
import P1.f;
import T1.a;
import W1.l;
import W1.p;
import W1.s;
import W1.v;
import W1.w;
import Y1.h;
import Y1.o;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RemoteViews;
import androidx.recyclerview.widget.E0;
import androidx.recyclerview.widget.G;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.H;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Reorderable;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.appprediction.PredictionRowView;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.BitmapRenderer;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.util.ActivityTracker;
import com.android.launcher3.util.HorizontalInsettableView;
import com.android.launcher3.util.MultiTranslateDelegate;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.OptionsPopupView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.allapps.OneSearchSessionManager$ZeroEntryState;
import com.google.android.apps.nexuslauncher.allapps.U;
import com.google.android.apps.nexuslauncher.allapps.X2;
import com.google.android.apps.nexuslauncher.c;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.nexuslauncher.m;
import com.google.android.apps.nexuslauncher.n;
import com.google.android.apps.nexuslauncher.qsb.SearchDelegateView;
import com.google.android.apps.nexuslauncher.search.SearchConfigProto$Source;
import com.google.android.apps.nexuslauncher.search.SearchConfigProto$TapTarget;
import com.google.android.apps.nexuslauncher.u;
import java.util.ArrayList;
import java.util.Collections;
import z3.d;
/* loaded from: classes.dex */
public class SearchDelegateView extends p implements HorizontalInsettableView, Reorderable, m {

    /* renamed from: q  reason: collision with root package name */
    public static final /* synthetic */ int f7532q = 0;

    /* renamed from: j  reason: collision with root package name */
    public final int f7533j;

    /* renamed from: k  reason: collision with root package name */
    public AssistantIconView f7534k;

    /* renamed from: l  reason: collision with root package name */
    public ViewGroup f7535l;

    /* renamed from: m  reason: collision with root package name */
    public final AnimatedFloat f7536m;

    /* renamed from: n  reason: collision with root package name */
    public SearchConfigProto$TapTarget f7537n;

    /* renamed from: o  reason: collision with root package name */
    public f f7538o;

    /* renamed from: p  reason: collision with root package name */
    public final MultiTranslateDelegate f7539p;

    public SearchDelegateView(Context context) {
        this(context, null, 0);
    }

    @Override // W1.p
    public final void b(String str, SearchConfigProto$TapTarget searchConfigProto$TapTarget) {
        int i4;
        SearchDelegateView searchDelegateView;
        char c4;
        BubbleTextView bubbleTextView;
        int i5;
        if (c.f7334w.get()) {
            com.google.android.apps.nexuslauncher.p pVar = ((u) u.f7612m.get(getContext())).f7619i;
            if (!pVar.f7505c) {
                n nVar = pVar.f7504b;
                if (nVar != null) {
                    g().startActivitySafely(this, new Intent(nVar.f7484a.f7487b), null);
                    return;
                }
                return;
            }
        }
        NexusLauncherActivity g4 = g();
        U u4 = g4.f6476g;
        if (u4.f7283p.f7179b) {
            u4.Q(str, OneSearchSessionManager$ZeroEntryState.f6664e, true);
            return;
        }
        final l lVar = new l(this, this.f1916i, str, searchConfigProto$TapTarget);
        NexusLauncherActivity nexusLauncherActivity = lVar.f1902b;
        int attrColor = GraphicsUtils.getAttrColor(R.attr.allAppsScrimColor, nexusLauncherActivity);
        Y1.l lVar2 = lVar.f1906f;
        lVar2.j(attrColor);
        lVar2.n(Themes.getAttrBoolean(R.attr.isMainColorDark, nexusLauncherActivity));
        boolean z4 = lVar.f1903c;
        if (z4) {
            int i6 = nexusLauncherActivity.getDeviceProfile().numShownAllAppsColumns;
            lVar2.o(i6);
            PredictionRowView predictionRowView = (PredictionRowView) ((ActivityAllAppsContainerView) nexusLauncherActivity.findViewById(R.id.apps_view)).getFloatingHeaderView().findFixedRowByType(PredictionRowView.class);
            ArrayList arrayList = (ArrayList) ((PredictionRowView) ((ActivityAllAppsContainerView) nexusLauncherActivity.findViewById(R.id.apps_view)).getFloatingHeaderView().findFixedRowByType(PredictionRowView.class)).getPredictedApps();
            int min = Math.min(arrayList.size(), i6);
            boolean z5 = false;
            for (int i7 = 0; i7 < min; i7++) {
                lVar2.a(lVar.c((ItemInfoWithIcon) arrayList.get(i7), i7));
                z5 = z5 || ((ItemInfoWithIcon) arrayList.get(i7)).usingLowResIcon();
            }
            if (z5) {
                lVar2.b();
            }
            if (predictionRowView.isShown()) {
                int i8 = 0;
                while (true) {
                    if (i8 >= predictionRowView.getChildCount()) {
                        break;
                    } else if (predictionRowView.getChildAt(i8) instanceof BubbleTextView) {
                        lVar.f1908h = (BubbleTextView) predictionRowView.getChildAt(i8);
                        break;
                    } else {
                        i8++;
                    }
                }
                if (lVar.f1908h == null) {
                    lVar.f();
                }
                h e4 = l.e(predictionRowView);
                e4.f(predictionRowView.getPaddingLeft() + e4.b());
                e4.g(predictionRowView.getPaddingTop() + e4.c());
                e4.h((e4.d() - predictionRowView.getPaddingLeft()) - predictionRowView.getPaddingRight());
                e4.e((e4.a() - predictionRowView.getPaddingBottom()) - predictionRowView.getPaddingTop());
                lVar.f1909i = e4.c();
                if (z5) {
                    e4.g(e4.c() - e4.a());
                }
                lVar2.k(e4);
            } else {
                AllAppsRecyclerView activeRecyclerView = ((ActivityAllAppsContainerView) nexusLauncherActivity.findViewById(R.id.apps_view)).getActiveRecyclerView();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) activeRecyclerView.getLayoutManager();
                H spanSizeLookup = gridLayoutManager.getSpanSizeLookup();
                int childCount = activeRecyclerView.getChildCount();
                BubbleTextView[] bubbleTextViewArr = new BubbleTextView[i6];
                int i9 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= childCount) {
                        c4 = 0;
                        bubbleTextView = null;
                        break;
                    }
                    E0 childViewHolder = activeRecyclerView.getChildViewHolder(activeRecyclerView.getChildAt(i10));
                    AllAppsRecyclerView allAppsRecyclerView = activeRecyclerView;
                    if (childViewHolder.itemView instanceof BubbleTextView) {
                        int spanCount = gridLayoutManager.getSpanCount() / i6;
                        i5 = childCount;
                        int spanGroupIndex = spanSizeLookup.getSpanGroupIndex(childViewHolder.getLayoutPosition(), gridLayoutManager.getSpanCount());
                        if (spanGroupIndex < 0) {
                            continue;
                        } else {
                            View view = childViewHolder.itemView;
                            if (i9 < 0) {
                                i9 = spanGroupIndex;
                            } else if (spanGroupIndex != i9) {
                                bubbleTextView = (BubbleTextView) view;
                                c4 = 0;
                                break;
                            }
                            bubbleTextViewArr[((G) view.getLayoutParams()).f3797e / spanCount] = (BubbleTextView) view;
                        }
                    } else {
                        i5 = childCount;
                    }
                    i10++;
                    activeRecyclerView = allAppsRecyclerView;
                    childCount = i5;
                }
                BubbleTextView bubbleTextView2 = bubbleTextViewArr[c4];
                if (bubbleTextView2 == null) {
                    Log.e("ConfigBuilder", "No icons rendered in all apps");
                    lVar.f();
                } else {
                    lVar.f1908h = bubbleTextView2;
                    h e5 = l.e(bubbleTextViewArr[i6 - 1]);
                    h e6 = l.e(bubbleTextViewArr[c4]);
                    if (Utilities.isRtl(nexusLauncherActivity.getResources())) {
                        e5 = e6;
                        e6 = e5;
                    }
                    e6.h((e5.d() + e5.b()) - e6.b());
                    lVar.f1909i = e6.c();
                    e6.g(e6.c() - e6.a());
                    lVar2.k(e6);
                    if (bubbleTextView != null) {
                        h e7 = l.e(bubbleTextView);
                        e7.h(e6.d());
                        e7.g(e7.c() - e7.a());
                        lVar2.w(e7);
                    } else {
                        lVar.b();
                    }
                }
            }
        } else {
            lVar.f();
        }
        lVar2.m();
        String d4 = lVar2.d();
        RemoteViews remoteViews = new RemoteViews(nexusLauncherActivity.getPackageName(), (int) R.layout.apps_search_icon_template);
        int iconSize = lVar.f1908h.getIconSize();
        int width = (lVar.f1908h.getWidth() - iconSize) / 2;
        int paddingTop = lVar.f1908h.getPaddingTop();
        int height = (lVar.f1908h.getHeight() - iconSize) - paddingTop;
        remoteViews.setViewPadding(16908294, width, paddingTop, width, height);
        int min2 = Math.min((int) (iconSize * 0.12f), Math.min(width, Math.min(paddingTop, height)));
        int i11 = width - min2;
        remoteViews.setViewPadding(R.id.click_feedback_wrapper, i11, paddingTop - min2, i11, height - min2);
        remoteViews.setTextViewTextSize(16908310, 0, nexusLauncherActivity.getDeviceProfile().allAppsIconTextSizePx);
        remoteViews.setViewPadding(16908310, lVar.f1908h.getPaddingLeft(), lVar.f1908h.getCompoundDrawablePadding() + lVar.f1908h.getIconSize(), lVar.f1908h.getPaddingRight(), 0);
        Bundle bundle = lVar.f1905e;
        bundle.putParcelable(d4, remoteViews);
        SearchDelegateView searchDelegateView2 = lVar.f1901a;
        if (searchDelegateView2.getVisibility() != 0) {
            h e8 = l.e(nexusLauncherActivity.getDragLayer());
            e8.f(lVar.g(e8) + e8.b());
            e8.g(e8.c() + nexusLauncherActivity.getDeviceProfile().getInsets().top);
            e8.e(nexusLauncherActivity.getResources().getDimensionPixelSize(R.dimen.qsb_widget_height));
            lVar2.s(e8);
        } else {
            lVar2.s(l.e(searchDelegateView2));
        }
        lVar2.z(z4 && nexusLauncherActivity.isInState(LauncherState.ALL_APPS));
        if (lVar2.h()) {
            lVar2.x(SearchConfigProto$Source.ALL_APPS);
            lVar2.v();
            String g5 = lVar2.g();
            RemoteViews remoteViews2 = new RemoteViews(nexusLauncherActivity.getPackageName(), (int) R.layout.apps_search_qsb_template);
            if (searchDelegateView2.f7534k.getVisibility() != 0) {
                remoteViews2.setViewVisibility(R.id.mic_icon, 4);
            }
            View findViewById = searchDelegateView2.findViewById(R.id.g_icon);
            int width2 = searchDelegateView2.getLayoutDirection() == 1 ? searchDelegateView2.getWidth() - findViewById.getRight() : findViewById.getLeft();
            remoteViews2.setViewPadding(R.id.qsb_icon_container, width2, 0, width2, 0);
            bundle.putParcelable(g5, remoteViews2);
            lVar2.t();
            lVar2.u(searchDelegateView2.f7534k.getVisibility() != 0 ? 0 : R.id.mic_icon);
            final int i12 = lVar.f1909i;
            h e9 = l.e(nexusLauncherActivity.getDragLayer());
            e9.g(e9.c() + i12);
            e9.e(e9.a() - i12);
            lVar2.r();
            lVar2.q(e9);
            if (e9.d() <= 0 || e9.a() <= 0) {
                Log.e("ConfigBuilder", "Invalid preview bitmap size. width: " + e9.d() + "hight: " + e9.a() + " top shift: " + i12);
                e9.f(0);
                e9.g(0);
                e9.h(1);
                e9.e(1);
                lVar2.q(e9);
                Bitmap createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
                createBitmap.setPixel(0, 0, 0);
                bundle.putParcelable(lVar2.f(), createBitmap);
            } else {
                bundle.putParcelable(lVar2.f(), BitmapRenderer.createHardwareBitmap(e9.d(), e9.a(), new BitmapRenderer() { // from class: W1.k
                    @Override // com.android.launcher3.icons.BitmapRenderer
                    public final void draw(Canvas canvas) {
                        l lVar3 = l.this;
                        lVar3.getClass();
                        int save = canvas.save();
                        canvas.translate(0.0f, -i12);
                        NexusLauncherActivity nexusLauncherActivity2 = lVar3.f1902b;
                        lVar3.a(canvas, nexusLauncherActivity2.getAppsView().getActiveRecyclerView());
                        lVar3.a(canvas, nexusLauncherActivity2.getAppsView().getFloatingHeaderView());
                        canvas.restoreToCount(save);
                    }
                }));
            }
        } else if (nexusLauncherActivity.isInState(LauncherState.OVERVIEW)) {
            lVar2.x(SearchConfigProto$Source.SHELF);
        } else if (nexusLauncherActivity.isInState(LauncherState.NORMAL)) {
            lVar2.x(SearchConfigProto$Source.HOMESCREEN);
        } else {
            lVar2.x(SearchConfigProto$Source.UNKNOWN);
        }
        lVar2.l(searchDelegateView2.h());
        f fVar = searchDelegateView2.f7538o;
        if (fVar != null) {
            if (f.f1544y) {
                Log.d("DoodleView", "getCurrentLoop=" + fVar.f1550h);
            }
            i4 = fVar.f1550h;
        } else {
            i4 = 0;
        }
        lVar2.p(i4);
        Y1.n d5 = o.d();
        d5.b(lVar2);
        String str2 = lVar.f1907g;
        if (str2 == null) {
            str2 = "";
        }
        d5.a(str2);
        if (g4.getOverlayManager().startSearch(((o) d5.build()).toByteArray(), bundle)) {
            QsbTransitionManager qsbTransitionManager = g4.f6473d.f6471b;
            if (qsbTransitionManager.f7528d.hasWindowFocus()) {
                qsbTransitionManager.f7531g = true;
            } else {
                qsbTransitionManager.a();
            }
            searchDelegateView = this;
        } else {
            Context context = getContext();
            int[] iArr = new int[2];
            searchDelegateView = this;
            searchDelegateView.getLocationInWindow(iArr);
            Rect rect = new Rect(0, 0, getWidth(), getHeight());
            rect.offset(iArr[0], iArr[1]);
            rect.inset(getPaddingLeft(), getPaddingTop());
            View findViewById2 = searchDelegateView.findViewById(R.id.g_icon);
            AssistantIconView assistantIconView = searchDelegateView.f7534k;
            Intent intent = new Intent("android.search.action.GLOBAL_SEARCH");
            intent.setSourceBounds(rect);
            if (assistantIconView.getVisibility() != 0) {
                intent.putExtra("source_mic_alpha", 0.0f);
            }
            context.sendOrderedBroadcast(intent.putExtra("source_round_left", true).putExtra("source_round_right", true).putExtra("source_logo_offset", l.d(findViewById2, rect)).putExtra("source_mic_offset", l.d(assistantIconView, rect)).putExtra("use_fade_animation", true).setPackage("com.google.android.googlequicksearchbox").addFlags(1342177280), null, new v(searchDelegateView, g4), null, 0, null, null);
        }
        searchDelegateView.f7537n = SearchConfigProto$TapTarget.NONE;
    }

    @Override // com.google.android.apps.nexuslauncher.m
    public final void c(com.google.android.apps.nexuslauncher.p pVar) {
        if (pVar.f7505c) {
            this.f1915h.setVisibility(0);
            this.f1913f.setContentDescription(getContext().getText(R.string.label_g_icon));
            this.f1913f.setOnClickListener(new X2());
            e();
            return;
        }
        j(null);
        this.f1915h.setVisibility(8);
        this.f1913f.setOnClickListener(null);
        this.f1913f.setClickable(false);
        this.f1913f.setContentDescription("");
        n nVar = pVar.f7504b;
        if (nVar != null) {
            this.f1913f.setImageBitmap(nVar.f7484a.f7486a);
        } else {
            this.f1913f.setImageDrawable(new ColorDrawable(0));
        }
    }

    @Override // W1.p
    public final void d(Context context) {
        if (!c.f7334w.get() || ((u) u.f7612m.get(getContext())).f7619i.f7505c) {
            super.d(context);
        }
    }

    public final NexusLauncherActivity g() {
        ActivityContext activityContext = this.f1911d;
        if (activityContext instanceof NexusLauncherActivity) {
            ActivityTracker activityTracker = Launcher.ACTIVITY_TRACKER;
            return (NexusLauncherActivity) ((Launcher) activityContext);
        }
        return null;
    }

    @Override // com.android.launcher3.Reorderable
    public final float getReorderBounceScale() {
        return 0.0f;
    }

    @Override // com.android.launcher3.Reorderable
    public final MultiTranslateDelegate getTranslateDelegate() {
        return this.f7539p;
    }

    public final boolean h() {
        f fVar = this.f7538o;
        if (fVar != null) {
            return fVar.f1558p && fVar.f1555m.isRunning();
        }
        return false;
    }

    public final void i(View view) {
        b("", this.f7537n);
        if (FeatureFlags.ENABLE_PREMIUM_HAPTICS_ALL_APPS.get()) {
            view.performHapticFeedback(1, 1);
        }
        if (g().f6476g.f7283p.f7179b) {
            W1.n.a(g(), NexusLauncherEvent.LAUNCHER_GOOGLE_ALL_APPS_OPEN_FROM_QSB);
        } else {
            W1.n.a(g(), NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCHBOX_TAP);
        }
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final void initializeSearch(ActivityAllAppsContainerView activityAllAppsContainerView) {
    }

    public final void j(a aVar) {
        float f4;
        float f5;
        if (aVar == null) {
            if (this.f7538o != null) {
                this.f1913f.getDrawable().mutate().setTintList(null);
                removeView(this.f7538o);
                this.f7538o = null;
            }
        } else if (!c.f7334w.get() || ((u) u.f7612m.get(getContext())).f7619i.f7505c) {
            z3.c cVar = aVar.f1692d;
            if (cVar.l()) {
                this.f1913f.getDrawable().mutate().setTint(cVar.k());
            } else {
                this.f1913f.getDrawable().mutate().setTintList(null);
            }
            f fVar = this.f7538o;
            if (fVar == null) {
                this.f7538o = new f(getContext());
            } else {
                removeView(fVar);
            }
            f fVar2 = this.f7538o;
            AnimatedFloat animatedFloat = this.f7536m;
            fVar2.f1560r = fVar2.f1546d.getInt("num_times_started", 0);
            fVar2.f1561s = fVar2.f1546d.getInt("num_times_couldve_started", 0);
            if (f.f1544y) {
                Log.d("DoodleView", "init: numTimesStarted= " + fVar2.f1560r + ", mNumTimesCouldHaveStarted=" + fVar2.f1561s);
            }
            fVar2.b();
            fVar2.f1548f = cVar;
            fVar2.f1547e = aVar.f1693e;
            d b4 = cVar.b();
            fVar2.f1549g = b4;
            int d4 = b4.d();
            float f6 = d4;
            float c4 = (f6 / cVar.c()) * 1000.0f;
            float f7 = c4 / f6;
            boolean z4 = cVar.f() == 0;
            if (z4) {
                f5 = cVar.c() * 1000.0f;
                f4 = f5;
                d4 = 1;
            } else {
                float g4 = c4 + cVar.g();
                f4 = f7;
                f5 = g4;
            }
            Keyframe[] keyframeArr = new Keyframe[d4 + 1];
            int i4 = 0;
            float f8 = 0.0f;
            while (true) {
                if (i4 >= d4) {
                    break;
                }
                keyframeArr[i4] = Keyframe.ofInt(f8 / f5, i4);
                f8 += f4;
                if (i4 == 0 && cVar.e()) {
                    f8 += cVar.g() / 2;
                }
                i4++;
            }
            keyframeArr[d4] = Keyframe.ofInt(1.0f, d4 - 1);
            ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(fVar2, PropertyValuesHolder.ofKeyframe(f.f1545z, keyframeArr));
            ofPropertyValuesHolder.addListener(new e(fVar2, z4, ofPropertyValuesHolder));
            ofPropertyValuesHolder.setDuration(f5);
            ofPropertyValuesHolder.setInterpolator(y0.e.f12949m);
            ofPropertyValuesHolder.setRepeatMode(cVar.h() ? 2 : 1);
            int f9 = cVar.f();
            boolean z5 = f9 == -1;
            if (cVar.h() && !z5) {
                f9 *= 2;
            }
            ofPropertyValuesHolder.setRepeatCount(z5 ? -1 : Math.max(0, f9 - 1));
            fVar2.f1555m = new AnimatorSet();
            Animator c5 = f.c(animatedFloat, true);
            Animator c6 = f.c(animatedFloat, false);
            if (fVar2.f1548f.d() != 0) {
                fVar2.f1555m.playSequentially(c5, ofPropertyValuesHolder, c6);
            } else {
                fVar2.f1555m.playSequentially(ofPropertyValuesHolder, c6);
            }
            addView(this.f7538o, 0);
            this.f7536m.updateValue((this.f7538o.f1548f.d() != 0) ^ true ? 1.0f : 0.0f);
        }
    }

    @Override // W1.p, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (c.f7334w.get()) {
            u uVar = (u) u.f7612m.get(getContext());
            uVar.a(this);
            c(uVar.f7619i);
        }
    }

    @Override // W1.p, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (c.f7334w.get()) {
            ((u) u.f7612m.get(getContext())).c(this);
        }
    }

    @Override // W1.p, android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f7534k = (AssistantIconView) findViewById(R.id.mic_icon);
        this.f1915h.setOnClickListener(new s(this, 1));
        this.f7535l = (ViewGroup) findViewById(R.id.end_part);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        RippleDrawable rippleDrawable;
        int size = View.MeasureSpec.getSize(i5);
        int size2 = View.MeasureSpec.getSize(i4);
        setMeasuredDimension(size2, size);
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            rippleDrawable = (RippleDrawable) background;
        } else {
            if (background instanceof w) {
                w wVar = (w) background;
                if (wVar.getDrawable() instanceof RippleDrawable) {
                    rippleDrawable = (RippleDrawable) wVar.getDrawable();
                }
            }
            rippleDrawable = null;
        }
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (!(childAt instanceof f) || rippleDrawable == null) {
                measureChildWithMargins(childAt, i4, 0, i5, 0);
            } else {
                ((FrameLayout.LayoutParams) childAt.getLayoutParams()).gravity = 8388627;
                int findIndexByLayerId = rippleDrawable.findIndexByLayerId(16908334);
                measureChildWithMargins(childAt, View.MeasureSpec.makeMeasureSpec((size2 - rippleDrawable.getLayerInsetLeft(findIndexByLayerId)) - rippleDrawable.getLayerInsetRight(findIndexByLayerId), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), 0, View.MeasureSpec.makeMeasureSpec((size - rippleDrawable.getLayerInsetTop(findIndexByLayerId)) - rippleDrawable.getLayerInsetBottom(findIndexByLayerId), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), 0);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
        if (java.lang.Float.compare(r5.getX(), h() ? getWidth() - r4.f7533j : r0.getLeft()) >= 0) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0049, code lost:
        if (java.lang.Float.compare(r5.getX(), h() ? r4.f7533j : r0.getRight()) <= 0) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004b, code lost:
        if (r2 == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004d, code lost:
        r0 = com.google.android.apps.nexuslauncher.search.SearchConfigProto$TapTarget.LOGO;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0050, code lost:
        r0 = com.google.android.apps.nexuslauncher.search.SearchConfigProto$TapTarget.TEXTBOX;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0052, code lost:
        r4.f7537n = r0;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            int r0 = r5.getActionMasked()
            if (r0 != 0) goto L54
            r0 = 2131362181(0x7f0a0185, float:1.8344135E38)
            android.view.View r0 = r4.findViewById(r0)
            boolean r1 = r4.f1912e
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L33
            boolean r1 = r4.h()
            if (r1 == 0) goto L21
            int r0 = r4.getWidth()
            int r1 = r4.f7533j
            int r0 = r0 - r1
            goto L25
        L21:
            int r0 = r0.getLeft()
        L25:
            float r0 = (float) r0
            float r1 = r5.getX()
            int r0 = java.lang.Float.compare(r1, r0)
            if (r0 < 0) goto L31
            goto L4b
        L31:
            r2 = r3
            goto L4b
        L33:
            boolean r1 = r4.h()
            if (r1 == 0) goto L3c
            int r0 = r4.f7533j
            goto L40
        L3c:
            int r0 = r0.getRight()
        L40:
            float r0 = (float) r0
            float r1 = r5.getX()
            int r0 = java.lang.Float.compare(r1, r0)
            if (r0 > 0) goto L31
        L4b:
            if (r2 == 0) goto L50
            com.google.android.apps.nexuslauncher.search.SearchConfigProto$TapTarget r0 = com.google.android.apps.nexuslauncher.search.SearchConfigProto$TapTarget.LOGO
            goto L52
        L50:
            com.google.android.apps.nexuslauncher.search.SearchConfigProto$TapTarget r0 = com.google.android.apps.nexuslauncher.search.SearchConfigProto$TapTarget.TEXTBOX
        L52:
            r4.f7537n = r0
        L54:
            boolean r4 = super.onTouchEvent(r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.qsb.SearchDelegateView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i4) {
        super.onWindowVisibilityChanged(i4);
        if (i4 != 0) {
            this.f7536m.updateValue(0.0f);
        }
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final void resetSearch() {
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(new w(drawable));
    }

    @Override // com.android.launcher3.util.HorizontalInsettableView
    public final void setHorizontalInsets(float f4) {
        int i4;
        int width = (int) (f4 * getWidth());
        float f5 = this.f1912e ? -width : width;
        this.f1913f.setTranslationX(f5);
        this.f7535l.setTranslationX(-i4);
        Drawable background = getBackground();
        if (background instanceof w) {
            w wVar = (w) background;
            if (wVar.f1925d != width) {
                wVar.f1925d = width;
                wVar.a();
            }
        }
        f fVar = this.f7538o;
        if (fVar != null) {
            fVar.setTranslationX(f5);
        }
    }

    @Override // com.android.launcher3.Reorderable
    public final void setReorderBounceScale(float f4) {
    }

    @Override // android.view.View
    public final void setVisibility(int i4) {
        if (FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get()) {
            super.setVisibility(4);
        } else {
            super.setVisibility(i4);
        }
    }

    public SearchDelegateView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchDelegateView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f7536m = new AnimatedFloat(new Runnable(this) { // from class: W1.r

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ SearchDelegateView f1919e;

            {
                this.f1919e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (r2) {
                    case 0:
                        SearchDelegateView searchDelegateView = this.f1919e;
                        if (searchDelegateView.f7538o == null) {
                            searchDelegateView.f1913f.setImageAlpha(255);
                            return;
                        }
                        float f4 = searchDelegateView.f7536m.value;
                        searchDelegateView.f1913f.setImageAlpha((int) ((1.0f - f4) * 255.0f));
                        searchDelegateView.f7538o.setAlpha(f4);
                        return;
                    default:
                        SearchDelegateView searchDelegateView2 = this.f1919e;
                        int i5 = SearchDelegateView.f7532q;
                        searchDelegateView2.i(searchDelegateView2);
                        return;
                }
            }
        });
        this.f7537n = SearchConfigProto$TapTarget.NONE;
        this.f7539p = new MultiTranslateDelegate(5, this);
        this.f7533j = getResources().getDimensionPixelSize(R.dimen.qsb_doodle_tap_target_logo_width);
        setOnClickListener(new s(this, 0));
        setHandwritingDelegatorCallback(new Runnable(this) { // from class: W1.r

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ SearchDelegateView f1919e;

            {
                this.f1919e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (r2) {
                    case 0:
                        SearchDelegateView searchDelegateView = this.f1919e;
                        if (searchDelegateView.f7538o == null) {
                            searchDelegateView.f1913f.setImageAlpha(255);
                            return;
                        }
                        float f4 = searchDelegateView.f7536m.value;
                        searchDelegateView.f1913f.setImageAlpha((int) ((1.0f - f4) * 255.0f));
                        searchDelegateView.f7538o.setAlpha(f4);
                        return;
                    default:
                        SearchDelegateView searchDelegateView2 = this.f1919e;
                        int i5 = SearchDelegateView.f7532q;
                        searchDelegateView2.i(searchDelegateView2);
                        return;
                }
            }
        });
        setOnLongClickListener(new View.OnLongClickListener() { // from class: W1.t
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                SearchDelegateView searchDelegateView = SearchDelegateView.this;
                int i5 = SearchDelegateView.f7532q;
                searchDelegateView.getClass();
                if (view == searchDelegateView && !com.google.android.apps.nexuslauncher.c.f7331t.get()) {
                    OptionsPopupView.OptionItem optionItem = new OptionsPopupView.OptionItem(searchDelegateView.getContext().getString(R.string.hotseat_qsb_preferences), searchDelegateView.getContext().getDrawable(R.drawable.ic_setting), NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_PREFERENCE_TAP_OR_LONG_PRESS, new u());
                    RectF rectF = new RectF(Utilities.getViewBounds(view));
                    float centerX = rectF.centerX();
                    rectF.right = centerX;
                    rectF.left = centerX;
                    OptionsPopupView.show(searchDelegateView.g(), rectF, Collections.singletonList(optionItem), true);
                    return true;
                }
                return false;
            }
        });
        setAccessibilityDelegate(new W1.o());
    }
}
