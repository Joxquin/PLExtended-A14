package com.google.android.apps.nexuslauncher.overview;

import V1.e;
import V1.m;
import V1.n;
import V1.s;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.prediction.AppTarget;
import android.content.Context;
import android.content.pm.ShortcutInfo;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.Button;
import android.widget.LinearLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.Executors;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.views.OverviewActionsView;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.overview.ShareTargetsView;
import java.util.List;
/* loaded from: classes.dex */
public class ShareTargetsView extends LinearLayout {

    /* renamed from: k  reason: collision with root package name */
    public static final /* synthetic */ int f7495k = 0;

    /* renamed from: d  reason: collision with root package name */
    public boolean f7496d;

    /* renamed from: e  reason: collision with root package name */
    public RectF f7497e;

    /* renamed from: f  reason: collision with root package name */
    public String f7498f;

    /* renamed from: g  reason: collision with root package name */
    public e f7499g;

    /* renamed from: h  reason: collision with root package name */
    public DeviceProfile f7500h;

    /* renamed from: i  reason: collision with root package name */
    public final m f7501i;

    /* renamed from: j  reason: collision with root package name */
    public final n f7502j;

    public ShareTargetsView(Context context) {
        this(context, null);
    }

    public final void a() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, View.TRANSLATION_Y, 0.0f, getMeasuredHeight());
        ofFloat.setDuration(333L);
        ofFloat.setInterpolator(AnimationUtils.loadInterpolator(((LinearLayout) this).mContext, 17563661));
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, View.ALPHA, 1.0f, 0.0f);
        ofFloat2.setStartDelay(50L);
        ofFloat2.setDuration(133L);
        ofFloat2.setInterpolator(new LinearInterpolator());
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.addListener(new s(this));
        animatorSet.start();
    }

    public final void b(List list, e eVar, boolean z4, RectF rectF, String str) {
        if (this.f7500h == null) {
            Log.e("ShareTargetsView", "Share target init before DeviceProfile set, not showing");
            return;
        }
        this.f7496d = z4;
        this.f7497e = rectF;
        this.f7498f = str;
        this.f7499g = eVar;
        removeAllViews();
        for (int i4 = 0; i4 < 3 && i4 < list.size(); i4++) {
            final AppTarget appTarget = (AppTarget) list.get(i4);
            if (appTarget.getShortcutInfo() != null) {
                final ShortcutInfo shortcutInfo = appTarget.getShortcutInfo();
                final Button c4 = c(shortcutInfo.getShortLabel());
                final WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(getContext(), shortcutInfo);
                final LauncherAppState launcherAppState = LauncherAppState.getInstance(getContext());
                Executors.MODEL_EXECUTOR.execute(new Runnable() { // from class: V1.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        final ShareTargetsView shareTargetsView = ShareTargetsView.this;
                        LauncherAppState launcherAppState2 = launcherAppState;
                        WorkspaceItemInfo workspaceItemInfo2 = workspaceItemInfo;
                        ShortcutInfo shortcutInfo2 = shortcutInfo;
                        final Button button = c4;
                        int i5 = ShareTargetsView.f7495k;
                        shareTargetsView.getClass();
                        launcherAppState2.getIconCache().getShortcutIcon(workspaceItemInfo2, shortcutInfo2);
                        final FastBitmapDrawable newIcon = workspaceItemInfo2.newIcon(0, shareTargetsView.getContext());
                        Executors.MAIN_EXECUTOR.post(new Runnable() { // from class: V1.p
                            @Override // java.lang.Runnable
                            public final void run() {
                                ShareTargetsView shareTargetsView2 = ShareTargetsView.this;
                                Button button2 = button;
                                FastBitmapDrawable fastBitmapDrawable = newIcon;
                                int i6 = ShareTargetsView.f7495k;
                                int i7 = shareTargetsView2.f7500h.allAppsIconSizePx;
                                fastBitmapDrawable.setBounds(0, 0, i7, i7);
                                button2.setCompoundDrawables(null, fastBitmapDrawable, null, null);
                            }
                        });
                    }
                });
                c4.setOnDragListener(new View.OnDragListener() { // from class: V1.r
                    @Override // android.view.View.OnDragListener
                    public final boolean onDrag(View view, DragEvent dragEvent) {
                        TaskOverlayFactory.OverlayUICallbacks overlayUICallbacks;
                        TaskOverlayFactory.OverlayUICallbacks overlayUICallbacks2;
                        ShareTargetsView shareTargetsView = ShareTargetsView.this;
                        ShortcutInfo shortcutInfo2 = shortcutInfo;
                        AppTarget appTarget2 = appTarget;
                        View view2 = c4;
                        int i5 = ShareTargetsView.f7495k;
                        shareTargetsView.getClass();
                        if (dragEvent.getAction() == 3) {
                            String str2 = (String) dragEvent.getClipDescription().getLabel();
                            if (!shareTargetsView.f7496d && str2.equals("dragToShareUrl")) {
                                e eVar2 = shareTargetsView.f7499g;
                                String str3 = shareTargetsView.f7498f;
                                overlayUICallbacks2 = ((OverviewActionsView) eVar2.f1815a).mCallbacks;
                                ((i) overlayUICallbacks2).g(str3, shortcutInfo2, appTarget2, true);
                            } else if (shareTargetsView.f7496d && str2.equals("dragToShareImage")) {
                                e eVar3 = shareTargetsView.f7499g;
                                RectF rectF2 = shareTargetsView.f7497e;
                                overlayUICallbacks = ((OverviewActionsView) eVar3.f1815a).mCallbacks;
                                ((i) overlayUICallbacks).h(rectF2, shortcutInfo2, appTarget2, true);
                            }
                            view2.setHovered(false);
                        } else if (dragEvent.getAction() == 5) {
                            view2.setHovered(true);
                        } else if (dragEvent.getAction() == 6 || dragEvent.getAction() == 4) {
                            view2.setHovered(false);
                        }
                        return true;
                    }
                });
                c4.setOnClickListener(new View.OnClickListener() { // from class: V1.q
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        TaskOverlayFactory.OverlayUICallbacks overlayUICallbacks;
                        TaskOverlayFactory.OverlayUICallbacks overlayUICallbacks2;
                        ShareTargetsView shareTargetsView = ShareTargetsView.this;
                        ShortcutInfo shortcutInfo2 = shortcutInfo;
                        AppTarget appTarget2 = appTarget;
                        if (shareTargetsView.f7496d) {
                            e eVar2 = shareTargetsView.f7499g;
                            RectF rectF2 = shareTargetsView.f7497e;
                            overlayUICallbacks2 = ((OverviewActionsView) eVar2.f1815a).mCallbacks;
                            ((i) overlayUICallbacks2).h(rectF2, shortcutInfo2, appTarget2, false);
                            return;
                        }
                        e eVar3 = shareTargetsView.f7499g;
                        String str2 = shareTargetsView.f7498f;
                        overlayUICallbacks = ((OverviewActionsView) eVar3.f1815a).mCallbacks;
                        ((i) overlayUICallbacks).g(str2, shortcutInfo2, appTarget2, false);
                    }
                });
                addView(c4);
            }
        }
        if (list.size() > 0) {
            Button c5 = c(getResources().getText(R.string.more_share_options));
            Drawable drawable = getContext().getDrawable(R.drawable.more_share_item);
            int i5 = this.f7500h.allAppsIconSizePx;
            drawable.setBounds(0, 0, i5, i5);
            c5.setCompoundDrawables(null, drawable, null, null);
            c5.setOnClickListener(this.f7502j);
            c5.setOnDragListener(this.f7501i);
            addView(c5);
        } else {
            Button c6 = c(getResources().getText(R.string.action_share));
            Drawable drawable2 = getContext().getDrawable(R.drawable.people_sharing_share);
            int i6 = this.f7500h.allAppsIconSizePx;
            drawable2.setBounds(0, 0, i6, i6);
            c6.setCompoundDrawables(null, drawable2, null, null);
            c6.setOnClickListener(this.f7502j);
            c6.setOnDragListener(this.f7501i);
            addView(c6);
        }
        setVisibility(0);
        setAlpha(0.0f);
        setTranslationY(getMeasuredHeight());
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, View.TRANSLATION_Y, getTranslationY(), 0.0f);
        ofFloat.setDuration(417L);
        ofFloat.setInterpolator(new PathInterpolator(0.33f, 0.0f, 0.0f, 1.0f));
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, View.ALPHA, 0.0f, 1.0f);
        ofFloat2.setStartDelay(66L);
        ofFloat2.setDuration(117L);
        ofFloat2.setInterpolator(new LinearInterpolator());
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.start();
    }

    public final Button c(CharSequence charSequence) {
        Button button = (Button) LayoutInflater.from(getContext()).inflate(R.layout.overview_share_target, (ViewGroup) this, false);
        button.setText(charSequence);
        button.setCompoundDrawablePadding(this.f7500h.allAppsIconDrawablePaddingPx);
        button.setLayoutParams(new LinearLayout.LayoutParams(((this.f7500h.availableWidthPx - getPaddingLeft()) - getPaddingRight()) / 4, -2));
        button.setGravity(17);
        return button;
    }

    public ShareTargetsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [V1.m] */
    /* JADX WARN: Type inference failed for: r1v2, types: [V1.n] */
    public ShareTargetsView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f7501i = new View.OnDragListener() { // from class: V1.m
            @Override // android.view.View.OnDragListener
            public final boolean onDrag(View view, DragEvent dragEvent) {
                TaskOverlayFactory.OverlayUICallbacks overlayUICallbacks;
                TaskOverlayFactory.OverlayUICallbacks overlayUICallbacks2;
                ShareTargetsView shareTargetsView = ShareTargetsView.this;
                int i5 = ShareTargetsView.f7495k;
                shareTargetsView.getClass();
                if (dragEvent.getAction() == 3) {
                    String str = (String) dragEvent.getClipDescription().getLabel();
                    if (!shareTargetsView.f7496d && str.equals("dragToShareUrl")) {
                        e eVar = shareTargetsView.f7499g;
                        String str2 = shareTargetsView.f7498f;
                        overlayUICallbacks2 = ((OverviewActionsView) eVar.f1815a).mCallbacks;
                        ((i) overlayUICallbacks2).b(str2, true);
                    } else if (shareTargetsView.f7496d && str.equals("dragToShareImage")) {
                        e eVar2 = shareTargetsView.f7499g;
                        RectF rectF = shareTargetsView.f7497e;
                        overlayUICallbacks = ((OverviewActionsView) eVar2.f1815a).mCallbacks;
                        ((i) overlayUICallbacks).e(rectF, true);
                    }
                    view.setHovered(false);
                } else if (dragEvent.getAction() == 5) {
                    view.setHovered(true);
                } else if (dragEvent.getAction() == 6 || dragEvent.getAction() == 4) {
                    view.setHovered(false);
                }
                return true;
            }
        };
        this.f7502j = new View.OnClickListener() { // from class: V1.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TaskOverlayFactory.OverlayUICallbacks overlayUICallbacks;
                TaskOverlayFactory.OverlayUICallbacks overlayUICallbacks2;
                ShareTargetsView shareTargetsView = ShareTargetsView.this;
                if (shareTargetsView.f7496d) {
                    e eVar = shareTargetsView.f7499g;
                    RectF rectF = shareTargetsView.f7497e;
                    overlayUICallbacks2 = ((OverviewActionsView) eVar.f1815a).mCallbacks;
                    ((i) overlayUICallbacks2).e(rectF, false);
                    return;
                }
                e eVar2 = shareTargetsView.f7499g;
                String str = shareTargetsView.f7498f;
                overlayUICallbacks = ((OverviewActionsView) eVar2.f1815a).mCallbacks;
                ((i) overlayUICallbacks).b(str, false);
            }
        };
    }
}
