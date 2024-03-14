.class public final Ln0/h;
.super Lx0/c;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lx0/c;


# direct methods
.method public constructor <init>(Lx0/c;)V
    .locals 0

    iput-object p1, p0, Ln0/h;->c:Lx0/c;

    invoke-direct {p0}, Lx0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lx0/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln0/h;->c:Lx0/c;

    invoke-virtual {p0, p1}, Lx0/c;->a(Lx0/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const p1, 0x40233333    # 2.55f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_0
    return-object p0
.end method
