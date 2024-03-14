package com.android.quickstep.interaction;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.quickstep.interaction.TutorialController;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class MenuFragment extends GestureSandboxFragment {
    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateView$0(View view) {
        launchTutorialStep(TutorialController.TutorialType.HOME_NAVIGATION);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateView$1(View view) {
        launchTutorialStep(TutorialController.TutorialType.BACK_NAVIGATION);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateView$2(View view) {
        launchTutorialStep(TutorialController.TutorialType.OVERVIEW_NAVIGATION);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateView$3(View view) {
        close();
    }

    private void launchTutorialStep(TutorialController.TutorialType tutorialType) {
        ((GestureSandboxActivity) getActivity()).launchTutorialStep(tutorialType, true);
    }

    @Override // androidx.fragment.app.K
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.gesture_tutorial_step_menu, viewGroup, false);
        inflate.findViewById(R.id.gesture_tutorial_menu_home_button).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.quickstep.interaction.m

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ MenuFragment f5685e;

            {
                this.f5685e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (r2) {
                    case 0:
                        this.f5685e.lambda$onCreateView$0(view);
                        return;
                    case 1:
                        this.f5685e.lambda$onCreateView$1(view);
                        return;
                    case 2:
                        this.f5685e.lambda$onCreateView$2(view);
                        return;
                    default:
                        this.f5685e.lambda$onCreateView$3(view);
                        return;
                }
            }
        });
        inflate.findViewById(R.id.gesture_tutorial_menu_back_button).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.quickstep.interaction.m

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ MenuFragment f5685e;

            {
                this.f5685e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (r2) {
                    case 0:
                        this.f5685e.lambda$onCreateView$0(view);
                        return;
                    case 1:
                        this.f5685e.lambda$onCreateView$1(view);
                        return;
                    case 2:
                        this.f5685e.lambda$onCreateView$2(view);
                        return;
                    default:
                        this.f5685e.lambda$onCreateView$3(view);
                        return;
                }
            }
        });
        inflate.findViewById(R.id.gesture_tutorial_menu_overview_button).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.quickstep.interaction.m

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ MenuFragment f5685e;

            {
                this.f5685e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (r2) {
                    case 0:
                        this.f5685e.lambda$onCreateView$0(view);
                        return;
                    case 1:
                        this.f5685e.lambda$onCreateView$1(view);
                        return;
                    case 2:
                        this.f5685e.lambda$onCreateView$2(view);
                        return;
                    default:
                        this.f5685e.lambda$onCreateView$3(view);
                        return;
                }
            }
        });
        inflate.findViewById(R.id.gesture_tutorial_menu_done_button).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.quickstep.interaction.m

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ MenuFragment f5685e;

            {
                this.f5685e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (r2) {
                    case 0:
                        this.f5685e.lambda$onCreateView$0(view);
                        return;
                    case 1:
                        this.f5685e.lambda$onCreateView$1(view);
                        return;
                    case 2:
                        this.f5685e.lambda$onCreateView$2(view);
                        return;
                    default:
                        this.f5685e.lambda$onCreateView$3(view);
                        return;
                }
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.K
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("use_tutorial_menu", true);
        bundle.remove("tutorial_type");
        bundle.remove("gesture_complete");
        super.onSaveInstanceState(bundle);
    }

    @Override // com.android.quickstep.interaction.GestureSandboxFragment
    public GestureSandboxFragment recreateFragment() {
        return new MenuFragment();
    }

    @Override // com.android.quickstep.interaction.GestureSandboxFragment
    public boolean shouldDisableSystemGestures() {
        return false;
    }
}
