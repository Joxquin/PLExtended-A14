package K2;

import android.app.smartspace.SmartspaceUtils;
import android.app.smartspace.uitemplatedata.Icon;
import android.app.smartspace.uitemplatedata.Text;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class t {
    public static int a(int i4) {
        switch (i4) {
            case 2:
                return R.layout.smartspace_sub_image_template_card;
            case 3:
                return R.layout.smartspace_sub_list_template_card;
            case 4:
                return R.layout.smartspace_carousel_template_card;
            case 5:
                return R.layout.smartspace_head_to_head_template_card;
            case 6:
                return R.layout.smartspace_combined_cards_template_card;
            case 7:
                return R.layout.smartspace_sub_card_template_card;
            default:
                return 0;
        }
    }

    public static void b(ImageView imageView, F f4) {
        if (f4 == null) {
            imageView.setTranslationX(0.0f);
            imageView.setTranslationY(0.0f);
            return;
        }
        float f5 = -f4.f938a;
        imageView.setTranslationX(f5);
        imageView.setTranslationY(f5);
    }

    public static void c(TextView textView, F f4, boolean z4) {
        if (f4 == null) {
            textView.setTranslationX(0.0f);
        } else {
            textView.setTranslationX((z4 ? 1 : -1) * f4.f938a);
        }
    }

    public static void d(ImageView imageView, Icon icon) {
        if (imageView == null) {
            Log.w("BcSmartspaceTemplateDataUtils", "Cannot set. The image view is null");
            return;
        }
        if (icon == null) {
            Log.w("BcSmartspaceTemplateDataUtils", "Cannot set. The given icon is null");
            f(imageView, 8);
        }
        imageView.setImageIcon(icon.getIcon());
        if (icon.getContentDescription() != null) {
            imageView.setContentDescription(icon.getContentDescription());
        }
    }

    public static void e(TextView textView, Text text) {
        if (textView == null) {
            Log.w("BcSmartspaceTemplateDataUtils", "Cannot set. The text view is null");
        } else if (SmartspaceUtils.isEmpty(text)) {
            Log.w("BcSmartspaceTemplateDataUtils", "Cannot set. The given text is empty");
            f(textView, 8);
        } else {
            textView.setText(text.getText());
            textView.setEllipsize(text.getTruncateAtType());
            textView.setMaxLines(text.getMaxLines());
        }
    }

    public static void f(View view, int i4) {
        if (view == null || view.getVisibility() == i4) {
            return;
        }
        view.setVisibility(i4);
    }
}
