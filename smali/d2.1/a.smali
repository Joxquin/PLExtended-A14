.class public final Ld2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:[I

.field public static final c:[I


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ld2/a;->b:[I

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ld2/a;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1060038
        0x1060039
        0x106003a
        0x106003b
        0x106003c
        0x106003d
        0x106003e
        0x106003f
        0x1060040
        0x1060041
        0x1060042
        0x1060043
        0x1060045
        0x1060046
        0x1060047
        0x1060048
        0x1060049
        0x106004a
        0x106004b
        0x106004c
        0x106004d
        0x106004e
        0x106004f
        0x1060050
        0x1060052
        0x1060053
        0x1060054
        0x1060055
        0x1060056
        0x1060057
        0x1060058
        0x1060059
        0x106005a
        0x106005b
        0x106005c
        0x106005d
    .end array-data

    :array_1
    .array-data 4
        0x106001e
        0x106001f
        0x1060020
        0x1060021
        0x1060022
        0x1060023
        0x1060024
        0x1060025
        0x1060026
        0x1060027
        0x1060028
        0x1060029
        0x106002b
        0x106002c
        0x106002d
        0x106002e
        0x106002f
        0x1060030
        0x1060031
        0x1060032
        0x1060033
        0x1060034
        0x1060035
        0x1060036
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Ljava/util/List;[ILandroid/util/SparseIntArray;)V
    .locals 4

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    const-string p0, "MaterialColorsGenerator"

    const-string p1, "The number of shades computed doesn\'t match the number of resources."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;
    .locals 4

    iget-object p0, p0, Ld2/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    new-instance v0, Ll1/i;

    sget-object v1, Lcom/android/systemui/monet/Style;->d:Lcom/android/systemui/monet/Style;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "theme_customization_overlay_packages"

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-static {v2, v3, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "android.theme.customization.theme_style"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/monet/Style;->valueOf(Ljava/lang/String;)Lcom/android/systemui/monet/Style;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "MaterialColorsGenerator"

    const-string v2, "Failed to parse THEME_CUSTOMIZATION_OVERLAY_PACKAGES."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/android/systemui/monet/Style;->d:Lcom/android/systemui/monet/Style;

    :cond_0
    :goto_0
    invoke-direct {v0, p1, v1}, Ll1/i;-><init>(Landroid/app/WallpaperColors;Lcom/android/systemui/monet/Style;)V

    new-instance p0, Landroid/util/SparseIntArray;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Ll1/i;->f:Ll1/t;

    iget-object v1, v1, Ll1/t;->c:Ljava/util/List;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Ll1/i;->g:Ll1/t;

    iget-object v1, v1, Ll1/t;->c:Ljava/util/List;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Ld2/a;->c:[I

    invoke-static {p1, v1, p0}, Ld2/a;->a(Ljava/util/List;[ILandroid/util/SparseIntArray;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Ll1/i;->c:Ll1/t;

    iget-object v1, v1, Ll1/t;->c:Ljava/util/List;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Ll1/i;->d:Ll1/t;

    iget-object v1, v1, Ll1/t;->c:Ljava/util/List;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v0, Ll1/i;->e:Ll1/t;

    iget-object v0, v0, Ll1/t;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Ld2/a;->b:[I

    invoke-static {p1, v0, p0}, Ld2/a;->a(Ljava/util/List;[ILandroid/util/SparseIntArray;)V

    return-object p0
.end method
