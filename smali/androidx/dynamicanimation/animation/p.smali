.class public final Landroidx/dynamicanimation/animation/p;
.super Landroidx/dynamicanimation/animation/q;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/util/FloatProperty;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/FloatProperty;)V
    .locals 0

    iput-object p2, p0, Landroidx/dynamicanimation/animation/p;->a:Landroid/util/FloatProperty;

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/q;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/p;->a:Landroid/util/FloatProperty;

    invoke-virtual {p0, p1}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/p;->a:Landroid/util/FloatProperty;

    invoke-virtual {p0, p1, p2}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void
.end method
