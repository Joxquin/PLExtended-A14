package com.android.launcher3.taskbar;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class DesktopNavbarButtonsViewController extends NavbarButtonsViewController {
    private final View mAllAppsButton;
    private final TaskbarActivityContext mContext;
    private TaskbarControllers mControllers;
    private final ViewGroup mNavButtonContainer;
    private final FrameLayout mNavButtonsView;
    private final ViewGroup mStartContextualContainer;

    public DesktopNavbarButtonsViewController(TaskbarActivityContext taskbarActivityContext, FrameLayout frameLayout) {
        super(taskbarActivityContext, frameLayout);
        this.mContext = taskbarActivityContext;
        this.mNavButtonsView = frameLayout;
        this.mNavButtonContainer = (ViewGroup) frameLayout.findViewById(R.id.end_nav_buttons);
        ViewGroup viewGroup = (ViewGroup) frameLayout.findViewById(R.id.start_contextual_buttons);
        this.mStartContextualContainer = viewGroup;
        View inflate = LayoutInflater.from(taskbarActivityContext).inflate(R.layout.taskbar_all_apps_button, viewGroup, false);
        this.mAllAppsButton = inflate;
        inflate.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.taskbar.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DesktopNavbarButtonsViewController.this.mControllers.taskbarAllAppsController.toggle();
            }
        });
    }

    @Override // com.android.launcher3.taskbar.NavbarButtonsViewController
    public final void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
        this.mNavButtonsView.getLayoutParams().height = this.mContext.getDeviceProfile().taskbarHeight;
        addButton(R.drawable.ic_sysbar_quick_settings, 32, this.mNavButtonContainer, this.mControllers.navButtonController, R.id.quick_settings_button);
        addButton(R.drawable.ic_sysbar_notifications, 64, this.mNavButtonContainer, this.mControllers.navButtonController, R.id.notifications_button);
        this.mStartContextualContainer.addView(this.mAllAppsButton);
    }

    @Override // com.android.launcher3.taskbar.NavbarButtonsViewController
    public final void onDestroy() {
    }
}
