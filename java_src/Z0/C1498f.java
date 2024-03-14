package z0;

import android.app.search.SearchTarget;
import android.os.Bundle;
import android.text.TextUtils;
import com.android.app.search.SearchTargetExtras$ThumbnailCropType;
/* renamed from: z0.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1498f {
    public static String a(SearchTarget searchTarget) {
        if (f(searchTarget)) {
            return null;
        }
        return searchTarget.getExtras().getString("group_id");
    }

    public static SearchTargetExtras$ThumbnailCropType b(SearchTarget searchTarget) {
        SearchTargetExtras$ThumbnailCropType searchTargetExtras$ThumbnailCropType;
        Bundle extras = searchTarget == null ? Bundle.EMPTY : searchTarget.getExtras();
        boolean isEmpty = extras.isEmpty();
        SearchTargetExtras$ThumbnailCropType searchTargetExtras$ThumbnailCropType2 = SearchTargetExtras$ThumbnailCropType.DEFAULT;
        return (isEmpty || (searchTargetExtras$ThumbnailCropType = SearchTargetExtras$ThumbnailCropType.values()[extras.getInt("thumbnail_crop_type")]) == null) ? searchTargetExtras$ThumbnailCropType2 : searchTargetExtras$ThumbnailCropType;
    }

    public static boolean c(SearchTarget searchTarget) {
        if (searchTarget != null) {
            return (searchTarget.getExtras() != null && searchTarget.getExtras().getBoolean("is_answer")) && searchTarget.getLayoutType().equals("tall_card_with_image_no_icon");
        }
        return false;
    }

    public static boolean d(SearchTarget searchTarget) {
        if (f(searchTarget)) {
            return false;
        }
        return !TextUtils.isEmpty(searchTarget.getExtras().getString("bitmap_url"));
    }

    public static boolean e(SearchTarget searchTarget) {
        if (f(searchTarget)) {
            return false;
        }
        return searchTarget.getExtras().getBoolean("recent_block_target", false);
    }

    public static boolean f(SearchTarget searchTarget) {
        return searchTarget == null || searchTarget.getExtras() == null;
    }
}
