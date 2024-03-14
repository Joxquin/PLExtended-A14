.class public final Lk0/j;
.super Lx0/c;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lx0/e;


# direct methods
.method public constructor <init>(Lx0/e;)V
    .locals 0

    iput-object p1, p0, Lk0/j;->c:Lx0/e;

    invoke-direct {p0}, Lx0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lx0/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lk0/j;->c:Lx0/e;

    check-cast p0, Lcom/android/quickstep/util/A;

    iget-object p0, p0, Lcom/android/quickstep/util/A;->a:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/quickstep/util/LottieAnimationColorUtils;->d(Ljava/lang/Integer;Lx0/b;)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method
