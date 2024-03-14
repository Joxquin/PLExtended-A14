.class public final LY1/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineBackgroundSpan;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LY1/B;->c:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iput-object p2, p0, LY1/B;->a:Ljava/lang/String;

    iput-object p3, p0, LY1/B;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p8

    iget-object v3, v0, LY1/B;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, v0, LY1/B;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    iget-object v0, v0, LY1/B;->c:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHighlightColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, p8, v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-virtual {p2, p8, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    move v3, p5

    int-to-float v3, v3

    add-float/2addr v2, v0

    move v4, p7

    int-to-float v4, v4

    move-object p3, p1

    move p4, v0

    move p5, v3

    move p6, v2

    move p7, v4

    move-object p8, p2

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
