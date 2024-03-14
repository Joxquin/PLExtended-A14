.class public final synthetic LM2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/graphics/drawable/AnimationDrawable;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/AnimationDrawable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM2/d;->a:Landroid/graphics/drawable/AnimationDrawable;

    iput p2, p0, LM2/d;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LM2/d;->a:Landroid/graphics/drawable/AnimationDrawable;

    iget p0, p0, LM2/d;->b:I

    check-cast p1, Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->i:I

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
