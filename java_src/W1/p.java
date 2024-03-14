package W1;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.Insettable;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.SearchUiManager;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.allapps.X2;
import com.google.android.apps.nexuslauncher.qsb.AssistantIconView;
import com.google.android.apps.nexuslauncher.search.SearchConfigProto$TapTarget;
/* loaded from: classes.dex */
public abstract class p extends FrameLayout implements SearchUiManager, SharedPreferences.OnSharedPreferenceChangeListener, Insettable {

    /* renamed from: d  reason: collision with root package name */
    public final ActivityContext f1911d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f1912e;

    /* renamed from: f  reason: collision with root package name */
    public ImageView f1913f;

    /* renamed from: g  reason: collision with root package name */
    public AssistantIconView f1914g;

    /* renamed from: h  reason: collision with root package name */
    public ImageButton f1915h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f1916i;

    public p(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f1911d = (ActivityContext) ActivityContext.lookupContext(context);
        this.f1912e = Utilities.isRtl(getResources());
        this.f1916i = getId() == R.id.search_container_all_apps;
    }

    public abstract void b(String str, SearchConfigProto$TapTarget searchConfigProto$TapTarget);

    public void d(Context context) {
        this.f1913f.setImageDrawable(context.getDrawable(R.drawable.ic_super_g_color));
        AssistantIconView assistantIconView = this.f1914g;
        assistantIconView.f7527f = context;
        assistantIconView.a();
        this.f1915h.setImageDrawable(context.getDrawable(R.drawable.ic_lens_color));
    }

    public final void e() {
        int attrColor;
        int i4;
        if (Themes.isThemedIconEnabled(getContext())) {
            attrColor = this.f1916i ? GraphicsUtils.getAttrColor(R.attr.qsbFillColorThemedAllApps, getContext()) : GraphicsUtils.getAttrColor(R.attr.qsbFillColorThemedHomeScreen, getContext());
            int color = getContext().getColor(17170494);
            i4 = Color.red(color) == Color.green(color) && Color.green(color) == Color.blue(color) ? R.style.QsbIconTint_Mono : R.style.QsbIconTint_Themed;
        } else {
            attrColor = GraphicsUtils.getAttrColor(R.attr.qsbFillColor, getContext());
            i4 = R.style.QsbIconTint;
        }
        getBackground().setTint(attrColor);
        d(new ContextThemeWrapper(getContext(), i4));
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public ExtendedEditText getEditText() {
        return null;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        LauncherPrefs.getDevicePrefs(getContext()).registerOnSharedPreferenceChangeListener(this);
        LauncherPrefs.getPrefs(getContext()).registerOnSharedPreferenceChangeListener(this);
        e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        LauncherPrefs.getDevicePrefs(getContext()).unregisterOnSharedPreferenceChangeListener(this);
        LauncherPrefs.getPrefs(getContext()).unregisterOnSharedPreferenceChangeListener(this);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        ImageView imageView = (ImageView) findViewById(R.id.g_icon);
        this.f1913f = imageView;
        imageView.setOnClickListener(new X2());
        this.f1914g = (AssistantIconView) findViewById(R.id.mic_icon);
        this.f1915h = (ImageButton) findViewById(R.id.lens_icon);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("themed_icons".equals(str)) {
            e();
        }
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final void preDispatchKeyEvent(KeyEvent keyEvent) {
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        int i4 = 0;
        if (this.f1916i && !FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get()) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
            Resources resources = getResources();
            if (this.f1911d.getDeviceProfile().isTablet) {
                marginLayoutParams.topMargin = resources.getDimensionPixelOffset(R.dimen.bottom_sheet_handle_area_height);
            } else {
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.qsb_margin_top_adjusting);
                marginLayoutParams.topMargin = Math.max(0, (rect.top - dimensionPixelSize) + resources.getDimensionPixelSize(R.dimen.all_apps_search_vertical_offset));
            }
        }
        DeviceProfile deviceProfile = this.f1911d.getDeviceProfile();
        if (this.f1916i) {
            i4 = deviceProfile.getAllAppsIconStartMargin();
        } else if (!deviceProfile.isQsbInline) {
            Rect hotseatLayoutPadding = deviceProfile.getHotseatLayoutPadding(getContext());
            int i5 = (deviceProfile.availableWidthPx - hotseatLayoutPadding.left) - hotseatLayoutPadding.right;
            int i6 = deviceProfile.hotseatBorderSpace;
            int i7 = deviceProfile.numShownHotseatIcons;
            i4 = (((i5 - ((i7 - 1) * i6)) / i7) - Math.round(deviceProfile.iconSizePx * 0.92f)) / 2;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) getLayoutParams();
        marginLayoutParams2.setMarginStart(i4);
        marginLayoutParams2.setMarginEnd(i4);
        setLayoutParams(marginLayoutParams2);
        requestLayout();
    }
}
