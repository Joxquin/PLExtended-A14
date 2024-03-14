.class public final synthetic Lcom/android/quickstep/views/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntToDoubleFunction;


# instance fields
.field public final synthetic a:[F


# direct methods
.method public synthetic constructor <init>([F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/h;->a:[F

    return-void
.end method


# virtual methods
.method public final applyAsDouble(I)D
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/h;->a:[F

    invoke-static {p1, p0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->a(I[F)D

    move-result-wide p0

    return-wide p0
.end method
