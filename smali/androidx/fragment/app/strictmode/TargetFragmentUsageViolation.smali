.class public abstract Landroidx/fragment/app/strictmode/TargetFragmentUsageViolation;
.super Landroidx/fragment/app/strictmode/Violation;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/fragment/app/K;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/strictmode/Violation;-><init>(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void
.end method
