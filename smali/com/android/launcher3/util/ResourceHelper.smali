.class public final Lcom/android/launcher3/util/ResourceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private final specsFileId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/util/ResourceHelper;->context:Landroid/content/Context;

    iput p1, p0, Lcom/android/launcher3/util/ResourceHelper;->specsFileId:I

    return-void
.end method


# virtual methods
.method public final getXml()Landroid/content/res/XmlResourceParser;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/ResourceHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher3/util/ResourceHelper;->specsFileId:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    const-string v0, "context.resources.getXml(specsFileId)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/ResourceHelper;->context:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const-string p1, "context.obtainStyledAttributes(attrs, styleId)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
