local math = math
local vector_origin = vector_origin

function EFFECT:Init( data )
	local pos = data:GetOrigin()
	local emitter = ParticleEmitter( pos )

	if ( !emitter ) then return end

	local particle = emitter:Add( "effects/rb655_health_over_bg", pos + Vector( math.random( -16, 16 ), math.random( -16, 16 ), math.random( 0, 72 ) ) )
	if ( particle ) then
		particle:SetLifeTime( 0 )
		particle:SetDieTime( 2 )

		particle:SetGravity( Vector( 0, 0, 100 ) )
		particle:SetVelocity( vector_origin )

		particle:SetStartSize( math.random( 4, 6 ) )
		particle:SetEndSize( math.random( 0, 1 ) )

		particle:SetStartAlpha( math.random( 200, 255 ) )
		particle:SetEndAlpha( 0 )

		particle:SetColor( 255, 0, 0 )
		--particle:SetAngleVelocity( Angle( math.Rand( -180, 180 ), math.Rand( -180, 180 ), math.Rand( -180, 180 ) ) )
	end

	emitter:Finish()
end

function EFFECT:Think()
	return false
end

function EFFECT:Render()
end
