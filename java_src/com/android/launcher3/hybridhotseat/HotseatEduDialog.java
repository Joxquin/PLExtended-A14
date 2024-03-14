package com.android.launcher3.hybridhotseat;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Insettable;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.celllayout.CellLayoutLayoutParams;
import com.android.launcher3.hybridhotseat.HotseatEduDialog;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.uioverrides.PredictedAppIcon;
import com.android.launcher3.views.AbstractSlideInView;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import java.util.List;
/* loaded from: classes.dex */
public class HotseatEduDialog extends AbstractSlideInView implements Insettable {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4649d = 0;
    private HotseatEduController mHotseatEduController;
    private View mHotseatWrapper;
    private final Rect mInsets;
    private CellLayout mSampleHotseat;

    public HotseatEduDialog(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static void a(HotseatEduDialog hotseatEduDialog) {
        hotseatEduDialog.mHotseatEduController.migrate();
        hotseatEduDialog.handleClose(true);
        hotseatEduDialog.mHotseatEduController.moveHotseatItems();
        hotseatEduDialog.mHotseatEduController.finishOnboarding();
        ((Launcher) hotseatEduDialog.mActivityContext).getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_HOTSEAT_EDU_ACCEPT);
    }

    public static void b(HotseatEduDialog hotseatEduDialog) {
        hotseatEduDialog.mHotseatEduController.showDimissTip();
        hotseatEduDialog.mHotseatEduController.finishOnboarding();
        ((Launcher) hotseatEduDialog.mActivityContext).getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_HOTSEAT_EDU_DENY);
        hotseatEduDialog.handleClose(true);
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public final int getScrimColor(Context context) {
        return -2013265920;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        handleClose(200L, true);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (i4 & 32) != 0;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        handleClose(false);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mHotseatWrapper = findViewById(R.id.hotseat_wrapper);
        this.mSampleHotseat = (CellLayout) findViewById(R.id.sample_prediction);
        Context context = getContext();
        DeviceProfile deviceProfile = ((Launcher) this.mActivityContext).getDeviceProfile();
        Rect hotseatLayoutPadding = deviceProfile.getHotseatLayoutPadding(context);
        this.mSampleHotseat.getLayoutParams().height = deviceProfile.cellHeightPx;
        this.mSampleHotseat.setGridSize(deviceProfile.numShownHotseatIcons, 1);
        this.mSampleHotseat.setPadding(hotseatLayoutPadding.left, 0, hotseatLayoutPadding.right, 0);
        ((Button) findViewById(R.id.turn_predictions_on)).setOnClickListener(new View.OnClickListener(this) { // from class: L0.c

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ HotseatEduDialog f1025e;

            {
                this.f1025e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (r2) {
                    case 0:
                        HotseatEduDialog.a(this.f1025e);
                        return;
                    default:
                        HotseatEduDialog.b(this.f1025e);
                        return;
                }
            }
        });
        ((Button) findViewById(R.id.no_thanks)).setOnClickListener(new View.OnClickListener(this) { // from class: L0.c

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ HotseatEduDialog f1025e;

            {
                this.f1025e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (r2) {
                    case 0:
                        HotseatEduDialog.a(this.f1025e);
                        return;
                    default:
                        HotseatEduDialog.b(this.f1025e);
                        return;
                }
            }
        });
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.button_container);
        int paddingEnd = deviceProfile.hotseatBarEndOffset - linearLayout.getPaddingEnd();
        if (!((InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(context)).getDeviceProfile(context).isTaskbarPresent || paddingEnd <= 0) {
            return;
        }
        ((LinearLayout.LayoutParams) linearLayout.getLayoutParams()).setMarginEnd(paddingEnd);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        setTranslationShift(1.0f);
    }

    public final void setHotseatEduController(HotseatEduController hotseatEduController) {
        this.mHotseatEduController = hotseatEduController;
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        int i4 = rect.left;
        Rect rect2 = this.mInsets;
        int i5 = i4 - rect2.left;
        int i6 = rect.right - rect2.right;
        int i7 = rect.bottom - rect2.bottom;
        rect2.set(rect);
        if (((Launcher) this.mActivityContext).getOrientation() == 1) {
            setPadding(i5, getPaddingTop(), i6, 0);
            View view = this.mHotseatWrapper;
            view.setPadding(view.getPaddingLeft(), getPaddingTop(), this.mHotseatWrapper.getPaddingRight(), i7);
            this.mHotseatWrapper.getLayoutParams().height = ((Launcher) this.mActivityContext).getDeviceProfile().hotseatBarSizePx + rect.bottom;
            return;
        }
        setPadding(0, getPaddingTop(), 0, 0);
        View view2 = this.mHotseatWrapper;
        view2.setPadding(view2.getPaddingLeft(), getPaddingTop(), this.mHotseatWrapper.getPaddingRight(), (int) getResources().getDimension(R.dimen.bottom_sheet_edu_padding));
        ((TextView) findViewById(R.id.hotseat_edu_heading)).setText(R.string.hotseat_edu_title_migrate_landscape);
        ((TextView) findViewById(R.id.hotseat_edu_content)).setText(R.string.hotseat_edu_message_migrate_landscape);
    }

    public final void show(List list) {
        if (getParent() != null || list.size() < ((Launcher) this.mActivityContext).getDeviceProfile().numShownHotseatIcons || this.mHotseatEduController == null) {
            return;
        }
        AbstractFloatingView.closeAllOpenViews((ActivityContext) this.mActivityContext);
        attachToContainer();
        if (!this.mIsOpen && !this.mOpenCloseAnimation.getAnimationPlayer().isRunning()) {
            this.mIsOpen = true;
            setUpDefaultOpenAnimation().start();
        }
        for (int i4 = 0; i4 < ((Launcher) this.mActivityContext).getDeviceProfile().numShownHotseatIcons; i4++) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) list.get(i4);
            PredictedAppIcon createIcon = PredictedAppIcon.createIcon(this.mSampleHotseat, workspaceItemInfo);
            createIcon.setEnabled(false);
            createIcon.setImportantForAccessibility(2);
            createIcon.verifyHighRes();
            this.mSampleHotseat.addViewToCellLayout(createIcon, i4, workspaceItemInfo.getViewId(), new CellLayoutLayoutParams(i4, 0, 1, 1), true);
        }
        ((Launcher) this.mActivityContext).getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_HOTSEAT_EDU_SEEN);
    }

    public HotseatEduDialog(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mInsets = new Rect();
        this.mContent = this;
    }
}
