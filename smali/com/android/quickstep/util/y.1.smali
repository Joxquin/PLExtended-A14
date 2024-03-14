.class public final synthetic Lcom/android/quickstep/util/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Landroid/content/res/Resources;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Landroid/content/res/Resources$Theme;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;Ljava/util/Map;Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/y;->a:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/quickstep/util/y;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/quickstep/util/y;->c:Landroid/content/res/Resources$Theme;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/y;->a:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/quickstep/util/y;->b:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/quickstep/util/y;->c:Landroid/content/res/Resources$Theme;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/util/LottieAnimationColorUtils;->c(Landroid/content/res/Resources;Ljava/util/Map;Landroid/content/res/Resources$Theme;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
