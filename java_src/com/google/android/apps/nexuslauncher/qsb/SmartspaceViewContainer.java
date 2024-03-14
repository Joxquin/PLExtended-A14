package com.google.android.apps.nexuslauncher.qsb;

import K2.C;
import K2.C0032e;
import K2.t;
import L2.d;
import W1.A;
import W1.z;
import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.IconNormalizer;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.Executors;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.OptionsPopupView;
import com.android.quickstep.logging.StatsLogCompatManager;
import com.android.systemui.shared.R;
import com.android.systemui.shared.regionsampling.RegionSampler;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.model.NexusLauncherModelDelegate;
import com.google.android.apps.nexuslauncher.qsb.SmartspaceViewContainer;
import com.google.android.systemui.smartspace.BcSmartspaceView;
import com.google.android.systemui.smartspace.CardPagerAdapter$TransitionType;
import com.google.android.systemui.smartspace.PageIndicator;
import java.util.ArrayList;
import java.util.List;
import m3.a;
import n1.f;
import n1.j;
import n1.k;
/* loaded from: classes.dex */
public class SmartspaceViewContainer extends FrameLayout implements k, StatsLogCompatManager.StatsLogConsumer, DeviceProfile.OnDeviceProfileChangeListener {

    /* renamed from: g  reason: collision with root package name */
    public static final /* synthetic */ int f7540g = 0;

    /* renamed from: d  reason: collision with root package name */
    public final ActivityContext f7541d;

    /* renamed from: e  reason: collision with root package name */
    public BcSmartspaceView f7542e;

    /* renamed from: f  reason: collision with root package name */
    public RegionSampler f7543f;

    public SmartspaceViewContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7541d = (ActivityContext) ActivityContext.lookupContext(context);
    }

    public final void a(DeviceProfile deviceProfile) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f7542e.getLayoutParams();
        int normalizedCircleSize = (deviceProfile.getCellSize(null).x - IconNormalizer.getNormalizedCircleSize(deviceProfile.iconSizePx)) / 2;
        layoutParams.setMarginStart(normalizedCircleSize);
        layoutParams.setMarginEnd(normalizedCircleSize);
    }

    public final void b(ConstraintLayout constraintLayout, final SmartspaceTarget smartspaceTarget, final d dVar) {
        Launcher launcher = Launcher.getLauncher(getContext());
        final NexusLauncherModelDelegate nexusLauncherModelDelegate = (NexusLauncherModelDelegate) launcher.getModel().getModelDelegate();
        ArrayList arrayList = new ArrayList();
        final SmartspaceAction baseAction = smartspaceTarget == null ? null : smartspaceTarget.getBaseAction();
        final Bundle extras = baseAction == null ? null : baseAction.getExtras();
        Object obj = extras == null ? null : extras.get("explanation_intent");
        Intent intent = obj instanceof Intent ? (Intent) obj : null;
        StatsLogManager.LauncherEvent launcherEvent = StatsLogManager.LauncherEvent.IGNORE;
        if (intent != null) {
            arrayList.add(new OptionsPopupView.OptionItem(getContext().getString(R.string.smartspace_explain_card), getContext().getDrawable(R.drawable.smartspace_info_icon), launcherEvent, new z(0, intent)));
        }
        arrayList.add(new OptionsPopupView.OptionItem(getContext().getString(R.string.smartspace_preferences_manage), getContext().getDrawable(R.drawable.ic_setting), launcherEvent, new A()));
        Object obj2 = extras == null ? null : extras.get("feedback_intent");
        Intent intent2 = obj2 instanceof Intent ? obj2 : null;
        if (intent2 != null) {
            arrayList.add(new OptionsPopupView.OptionItem(getContext().getString(R.string.feedback), getContext().getDrawable(R.drawable.smartspace_feedback_icon), launcherEvent, new z(1, intent2)));
        }
        int featureType = smartspaceTarget != null ? smartspaceTarget.getFeatureType() : 0;
        if (baseAction != null && featureType != 1) {
            arrayList.add(new OptionsPopupView.OptionItem(getContext().getString(R.string.dismiss), getContext().getDrawable(R.drawable.smartspace_dismiss_icon), launcherEvent, new View.OnLongClickListener() { // from class: W1.B
                /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
                /* JADX WARN: Removed duplicated region for block: B:11:0x004f  */
                @Override // android.view.View.OnLongClickListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final boolean onLongClick(android.view.View r7) {
                    /*
                        r6 = this;
                        com.google.android.apps.nexuslauncher.qsb.SmartspaceViewContainer r0 = com.google.android.apps.nexuslauncher.qsb.SmartspaceViewContainer.this
                        L2.d r1 = r2
                        com.google.android.apps.nexuslauncher.model.NexusLauncherModelDelegate r2 = r3
                        android.app.smartspace.SmartspaceTarget r3 = r4
                        android.app.smartspace.SmartspaceAction r4 = r5
                        android.os.Bundle r6 = r6
                        com.google.android.systemui.smartspace.BcSmartspaceView r0 = r0.f7542e
                        r5 = 1
                        r0.f8336m = r5
                        com.google.android.systemui.smartspace.BcSmartspaceEvent r0 = com.google.android.systemui.smartspace.BcSmartspaceEvent.SMARTSPACE_CARD_DISMISS
                        L2.a.a(r0, r1)
                        android.app.smartspace.SmartspaceTargetEvent$Builder r0 = new android.app.smartspace.SmartspaceTargetEvent$Builder
                        r1 = 4
                        r0.<init>(r1)
                        android.app.smartspace.SmartspaceTargetEvent$Builder r0 = r0.setSmartspaceTarget(r3)
                        java.lang.String r1 = r4.getId()
                        android.app.smartspace.SmartspaceTargetEvent$Builder r0 = r0.setSmartspaceActionId(r1)
                        android.app.smartspace.SmartspaceTargetEvent r0 = r0.build()
                        r2.b(r0)
                        java.lang.String r0 = "SmartspaceViewContainer"
                        if (r6 != 0) goto L39
                        java.lang.String r6 = "Cannot create dismiss intent: missing extras."
                        android.util.Log.w(r0, r6)
                        goto L46
                    L39:
                        java.lang.String r1 = "dismiss_intent"
                        java.lang.Object r6 = r6.get(r1)
                        boolean r1 = r6 instanceof android.content.Intent
                        if (r1 == 0) goto L46
                        android.content.Intent r6 = (android.content.Intent) r6
                        goto L47
                    L46:
                        r6 = 0
                    L47:
                        if (r6 != 0) goto L4f
                        java.lang.String r6 = "Cannot create dismiss click action: extras missing dismiss_intent."
                        android.util.Log.w(r0, r6)
                        goto L74
                    L4f:
                        android.content.ComponentName r0 = r6.getComponent()
                        if (r0 == 0) goto L6d
                        android.content.ComponentName r0 = r6.getComponent()
                        java.lang.String r0 = r0.getClassName()
                        java.lang.String r1 = "com.google.android.apps.gsa.staticplugins.opa.smartspace.ExportedSmartspaceTrampolineActivity"
                        boolean r0 = r0.equals(r1)
                        if (r0 == 0) goto L6d
                        android.content.Context r7 = r7.getContext()
                        r7.startActivity(r6)
                        goto L74
                    L6d:
                        android.content.Context r7 = r7.getContext()
                        r7.sendBroadcast(r6)
                    L74:
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: W1.B.onLongClick(android.view.View):boolean");
                }
            }));
        }
        Rect rect = new Rect();
        launcher.getDragLayer().getDescendantRectRelativeToSelf(constraintLayout, rect);
        RectF rectF = new RectF();
        float exactCenterX = rect.exactCenterX();
        rectF.right = exactCenterX;
        rectF.left = exactCenterX;
        rectF.top = 0.0f;
        rectF.bottom = rect.bottom;
        OptionsPopupView.show(launcher, rectF, arrayList, true);
    }

    @Override // com.android.quickstep.logging.StatsLogCompatManager.StatsLogConsumer
    public final void consume(StatsLogManager.EventEnum eventEnum, LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        final BcSmartspaceView bcSmartspaceView = this.f7542e;
        if (bcSmartspaceView != null) {
            int pageIndex = launcherAtom$ItemInfo.getContainerInfo().getWorkspace().getPageIndex();
            if ((pageIndex == 0 && eventEnum.equals(StatsLogManager.LauncherEvent.LAUNCHER_ONRESUME)) || ((pageIndex == -1 && eventEnum.equals(StatsLogManager.LauncherEvent.LAUNCHER_SWIPERIGHT)) || (pageIndex == 1 && eventEnum.equals(StatsLogManager.LauncherEvent.LAUNCHER_SWIPELEFT)))) {
                bcSmartspaceView.post(new Runnable() { // from class: W1.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        BcSmartspaceView.this.c();
                    }
                });
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        a(this.f7541d.getDeviceProfile());
        this.f7541d.addOnDeviceProfileChangeListener(this);
        StatsLogCompatManager.LOGS_CONSUMER.add(this);
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.get(getContext())).addPluginListener(this, f.class, false);
        if (FeatureFlags.ENABLE_REGION_SAMPLING.get()) {
            this.f7543f.startRegionSampler();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f7541d.removeOnDeviceProfileChangeListener(this);
        StatsLogCompatManager.LOGS_CONSUMER.remove(this);
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.get(getContext())).removePluginListener(this);
        if (FeatureFlags.ENABLE_REGION_SAMPLING.get()) {
            this.f7543f.stopRegionSampler();
        }
    }

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        a(deviceProfile);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        float f4;
        super.onFinishInflate();
        BcSmartspaceView bcSmartspaceView = (BcSmartspaceView) findViewById(R.id.bc_smartspace_view);
        this.f7542e = bcSmartspaceView;
        if (bcSmartspaceView.isAttachedToWindow()) {
            throw new IllegalStateException("Must call before attaching view to window.");
        }
        bcSmartspaceView.f8341r.f932t = "home";
        FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.ENABLE_REGION_SAMPLING;
        if (booleanFlag.get()) {
            RegionSampler regionSampler = new RegionSampler(this.f7542e, Executors.MAIN_EXECUTOR, Executors.UI_HELPER_EXECUTOR, booleanFlag.get(), new a() { // from class: W1.y
                @Override // m3.a
                public final Object invoke() {
                    int i4 = SmartspaceViewContainer.f7540g;
                    SmartspaceViewContainer smartspaceViewContainer = SmartspaceViewContainer.this;
                    smartspaceViewContainer.f7542e.f(smartspaceViewContainer.f7543f.currentForegroundColor());
                    return e3.f.f9037a;
                }
            });
            this.f7543f = regionSampler;
            regionSampler.setForegroundColors(((FrameLayout) this).mContext.getColor(R.color.workspace_text_color_light), ((FrameLayout) this).mContext.getColor(R.color.workspace_text_color_dark));
        }
        if (booleanFlag.get()) {
            this.f7542e.f(this.f7543f.currentForegroundColor());
            e3.f fVar = e3.f.f9037a;
        } else {
            this.f7542e.f(GraphicsUtils.getAttrColor(R.attr.workspaceTextColor, ((FrameLayout) this).mContext));
        }
        BcSmartspaceView bcSmartspaceView2 = this.f7542e;
        C c4 = bcSmartspaceView2.f8341r;
        List list = c4.f921i;
        c4.f935w = 0.0f;
        float f5 = c4.f934v;
        c4.f933u = f5 > 0.0f ? CardPagerAdapter$TransitionType.TO_LOCKSCREEN : f5 < 0.0f ? CardPagerAdapter$TransitionType.TO_AOD : CardPagerAdapter$TransitionType.NOT_IN_TRANSITION;
        c4.f934v = 0.0f;
        c4.h();
        c4.g();
        if (!bcSmartspaceView2.f8341r.f921i.isEmpty()) {
            t.f(bcSmartspaceView2, 0);
        }
        if (bcSmartspaceView2.f8341r.f926n) {
            float f6 = bcSmartspaceView2.f8334k;
            if (0.0f == f6) {
                r5 = bcSmartspaceView2.getAlpha();
            } else {
                r5 = f6 <= 0.0f ? 0.0f : 1.0f;
                float f7 = 0.36f;
                if (r5 < 0.36f) {
                    f4 = 0.36f - r5;
                } else {
                    f4 = r5 - 0.36f;
                    f7 = 0.64f;
                }
                r5 = f4 / f7;
            }
        }
        bcSmartspaceView2.setAlpha(r5);
        PageIndicator pageIndicator = bcSmartspaceView2.f8332i;
        if (pageIndicator != null) {
            pageIndicator.a(bcSmartspaceView2.f8341r.b(), bcSmartspaceView2.isLayoutRtl());
            bcSmartspaceView2.f8332i.setAlpha(r5);
        }
        bcSmartspaceView2.f8334k = 0.0f;
        C c5 = bcSmartspaceView2.f8341r;
        if (c5.f925m && c5.f921i != list && c5.b() > 0) {
            bcSmartspaceView2.g(bcSmartspaceView2.isLayoutRtl() ? bcSmartspaceView2.f8341r.b() - 1 : 0);
        }
        C c6 = bcSmartspaceView2.f8341r;
        int d4 = C0032e.d(c6.f932t, c6.f935w);
        if (d4 != -1 && (d4 != 3 || bcSmartspaceView2.f8330g)) {
            if (BcSmartspaceView.f8326t) {
                Log.d("BcSmartspaceView", "@" + Integer.toHexString(bcSmartspaceView2.hashCode()) + ", setDozeAmount: Logging SMARTSPACE_CARD_SEEN, currentSurface = " + d4);
            }
            bcSmartspaceView2.c();
        }
        this.f7542e.setOnLongClickListener(new z(2, this));
    }

    @Override // n1.k
    public final void onPluginConnected(j jVar, Context context) {
        this.f7542e.e((f) jVar);
    }

    @Override // n1.k
    public final void onPluginDisconnected(j jVar) {
        f fVar = (f) jVar;
        ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(getContext());
        if (activityContext instanceof NexusLauncherActivity) {
            this.f7542e.e(((NexusLauncherActivity) activityContext).f6474e);
        }
    }

    @Override // android.view.View
    public final void setPadding(int i4, int i5, int i6, int i7) {
        super.setPadding(0, 0, 0, 0);
    }
}
